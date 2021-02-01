                                          package com.dominos.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.AddressVO;
import com.dominos.domain.CartVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderVO;
import com.dominos.domain.PizzaVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.AddressDAO;
import com.dominos.persistence.CartDAO;
import com.dominos.persistence.MemberDAO;
import com.dominos.persistence.PizzaDAO;
import com.dominos.persistence.SideDAO;

@Controller
@RequestMapping("/cart/")
public class CartController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private CartDAO dao;
	
	@Inject
	private SideDAO side;
	
	@Inject
	private PizzaDAO pizza;
	
	@Inject
	private AddressDAO address;

	@Inject
	private MemberDAO member;
//	----------------------------------------------pizza -------------------------------------------------------------
	
	/*
	@ResponseBody
	@PostMapping("pizzaCount")
	public String pizzaCount(HttpSession session) throws Exception{
		String user_id = (String)session.getAttribute("id");
		String count = dao.countPizza(user_id);
		return count;
	}*/
	

	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public void cart(Locale locale, Model model) {
	}
	@RequestMapping(value = "/cart3", method = RequestMethod.GET)
	public void cart3(Locale locale, Model model) {
	}
	
	
	/** 배달/포장 주문
	 * @param session 세션 아이디 불러오기
	 * @param model 리스트 값 넣어 보내기
	 */
	@RequestMapping(value = "cart2", method = RequestMethod.GET)
	public void cart2(HttpSession session,Model model) {
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("address",address.getAll(user_id));
	}
	
	/** 주소 등록하기
	 */
	@RequestMapping(value = "addressEnrollBefore", method = RequestMethod.GET)
	public String addressEnrollBefore(HttpSession session,RedirectAttributes rttr) {
		String session_id = (String)session.getAttribute("id");
		int count = address.getCount(session_id); //개수 가져오기
		
		String msg = "";
		if(count >= 5) {
			msg = "주소등록은 5개까지 가능합니다. 삭제 후 다시 시도하세요.";
			rttr.addFlashAttribute("msg",msg);
			return "redirect:/cart/cart2";
		}else {
			return "redirect:/cart/addressEnroll";
		}
	}
	@RequestMapping(value = "addressEnroll", method = RequestMethod.GET)
	public void addressEnroll() {
	}
	
	/** 배달주소 등록하기 하고 주문방법선택으로 다시 오기.
	 * @param session 세션 아이디 불러오기
	 * @param m
	 */
	@RequestMapping(value = "cart2", method = RequestMethod.POST)
	public String cart2(HttpSession session,AddressVO vo,String category,RedirectAttributes rttr) {
		logger.info("왔다!!!!!!!!!!!!");
		String user_id = (String)session.getAttribute("id");
		vo.setUser_id(user_id);
		
		if(address.getCount(vo) >=1) {
		}else {
			address.insert(vo);
		}
		//model.addAttribute("address",address.getAll(user_id));
		
		rttr.addFlashAttribute("address", address.getAll(user_id));
		
		return "redirect:/cart/cart2";
	}
	

	//주소 하나 삭제	//ajax로 온건데 왜 ResponsBody 안해도 되지?
	/**주소 하나 삭제	
	 *  
	 */
	@GetMapping("deleteOneAddress")
	@ResponseBody
	public void deleteOneAddress(String uid) throws Exception {
		address.deleteOneAddress(uid);
		
	}
	
	
	
	
	//장바구니 담기 누르면 --> 넘어옴.
	@PostMapping("orderPizza")	
	public String  orderPizzaPost(CartVO cartVO,HttpSession session,@RequestParam(required = false) String sidedish) throws Exception{
		
		////////cart_id 설정.!!
		String maxCart_id = "1";
		if(dao.getMaxCart_id()==null) { ////피자인 것 중에서 가장 큰 카트아이디 값 찾기
			maxCart_id = "1";
		}else {
			maxCart_id = dao.getMaxCart_id();
		}
		cartVO.setCart_id(Integer.parseInt(maxCart_id)+1); 
		
		//order_uid : 날짜 시작!! 주문번호 order_uid 입력!!
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		int random = (int) (Math.random()*10000000);
		cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성
		
		
		//user_id
		String session_id = (String)session.getAttribute("id");
		String session_id2 = (String)session.getAttribute("id2");
		if(session_id==null || session_id.equals("")) {
			cartVO.setUser_id(session_id2);
		}else {
			cartVO.setUser_id(session_id);
		}

		String uid ="";
		SideVO sideVO = new SideVO();
		PizzaVO pizzaVO = new PizzaVO();
		if(sidedish == null) {	//뷰 피자면~~~~~~~~~~~~~~~~~~~~~~~~ 
			String getSize = cartVO.getSize(); 
			uid = Integer.toString(cartVO.getMenu_uid());
			pizzaVO = pizza.read(uid);
			
			//size
			if(getSize.equals("L")) {
				cartVO.setPrice(pizzaVO.getPrice_L());
			}else { //M이면
				cartVO.setPrice(pizzaVO.getPrice_M());
			}
			//vo.setPrice(Integer.parseInt(pizza.getPrice())));
			cartVO.setImage(pizzaVO.getImage());
			cartVO.setImage_o(pizzaVO.getImage_o());
			cartVO.setImage_s(pizzaVO.getImage_s());

			
			dao.insert(cartVO);
			
			if(session_id==null || session_id.equals("")) {
				return "redirect:/member/login";
			}else {
				dao.updateOrderUid(cartVO);
				return "redirect:/cart/pizza_cart";
			}
		}else {	////뷰 사이드디시~~~~~~~~~~~~~~~~~~~~~~~~
			uid = Integer.toString(cartVO.getMenu_uid());
			sideVO = side.read(uid);
			
			cartVO.setSize("");
			cartVO.setPrice(sideVO.getPrice());
			cartVO.setImage(sideVO.getImage());
			cartVO.setImage_o(sideVO.getImage_o());
			cartVO.setImage_s(sideVO.getImage_s());

			
			dao.insert(cartVO);
			if(session_id==null || session_id.equals("")) {
				return "redirect:/member/login";
			}else {
				dao.updateOrderUid(cartVO);
				return "redirect:/cart/pizza_cart";
			}
		}
		
	}

	//topping,Side,Juice 수량 버튼을 누르면 ajax
		@ResponseBody
		@PostMapping("orderSideDish")	
		public void  orderSideDish(String uid,String count,HttpSession session) throws Exception{
			SideVO sideVO = new SideVO();
			CartVO cartVO = new CartVO();

			//user_id
			String session_id = (String)session.getAttribute("id");
			String session_id2 = (String)session.getAttribute("id2");
			if(session_id==null || session_id.equals("")) {
				cartVO.setUser_id(session_id2);
			}else {
				cartVO.setUser_id(session_id);
			}

			sideVO = side.read(uid);
			int cnt = Integer.parseInt(count);

			//order_uid : 날짜 시작
			Date now = new Date();
			SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
			String signdate = sdate.format(now);
			int random = (int) (Math.random()*10000000);
			cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성

			
			String maxCart_id = "1";
			if(dao.getMaxCart_id()==null) { ////피자인 것 중에서 가장 큰 카트아이디 값 찾기
				maxCart_id = "1";
			}else {
				maxCart_id = dao.getMaxCart_id();
			}
			cartVO.setCart_id(Integer.parseInt(maxCart_id)+1); 
	        cartVO.setName(sideVO.getName());
	        cartVO.setPrice(sideVO.getPrice());
	        cartVO.setCount(cnt);
	        cartVO.setCategory(sideVO.getCategory());
	        cartVO.setMenu_uid(Integer.parseInt(uid));
	        cartVO.setCategory(sideVO.getCategory());
	        cartVO.setImage(sideVO.getImage());
	        cartVO.setImage_o(sideVO.getImage_o());
	        cartVO.setImage_s(sideVO.getImage_s());

	        int check = dao.check(cartVO);	//menu_uid=uid가 일치하는 수량 체크 

	        if(cnt>=1 && check == 0) { // 누른거기 때문에 인서트.
	        	dao.insert(cartVO);
	        }else if(cnt==0){ // 삭제하기
	        	dao.delete(cartVO);
	        }else { // (cnt < pre_cnt){ // 업데이트. 개수 증감.
	        	dao.update(cartVO);
	        }

		}
		//topping,Side,Juice 수량 버튼을 누르면 ajax
		@ResponseBody
		@PostMapping("orderJuice")	
		public int  orderJuice(String uid,String count,HttpSession session) throws Exception{
			SideVO sideVO = new SideVO();
			CartVO cartVO = new CartVO();

			//user_id
			String session_id = (String)session.getAttribute("id");
			String session_id2 = (String)session.getAttribute("id2");
			if(session_id==null || session_id.equals("")) {
				cartVO.setUser_id(session_id2);
			}else {
				cartVO.setUser_id(session_id);
			}

			sideVO = side.read(uid);
			int cnt = Integer.parseInt(count);

			//order_uid : 날짜 시작
			Date now = new Date();
			SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
			String signdate = sdate.format(now);
			int random = (int) (Math.random()*10000000);
			cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성

			
			String maxCart_id = "1";
			if(dao.getMaxCart_id()==null) { ////피자인 것 중에서 가장 큰 카트아이디 값 찾기
				maxCart_id = "1";
			}else {
				maxCart_id = dao.getMaxCart_id();
			}
			cartVO.setCart_id(Integer.parseInt(maxCart_id)+1); 
	        cartVO.setName(sideVO.getName());
	        cartVO.setPrice(sideVO.getPrice());
	        cartVO.setCount(cnt);
	        cartVO.setCategory(sideVO.getCategory());
	        cartVO.setMenu_uid(Integer.parseInt(uid));
	        cartVO.setCategory(sideVO.getCategory());
	        cartVO.setImage(sideVO.getImage());
	        cartVO.setImage_o(sideVO.getImage_o());
	        cartVO.setImage_s(sideVO.getImage_s());

	        int checkJuice = dao.checkJuice(cartVO);	//menu_uid=uid가 일치하는 수량 체크

	        
	        String countJuice = dao.countJuice(session_id);
	        String countPizza = dao.countPizza(session_id);
	        String countSideDish = dao.countSideDish(session_id);
	        int cntJuice = 0 + Integer.parseInt(count);
	        int cntPizza = 0;
	        int cntSideDish = 0;
	        if(countJuice == null) {}else {cntJuice += Integer.parseInt(countJuice);}
	        if(countPizza == null) {}else {cntPizza=Integer.parseInt(countPizza);}
	        if(countSideDish == null) {}else {cntSideDish=Integer.parseInt(countSideDish);}
	        	
	        if(session_id == null || session_id.equals("")) {
	        	return 0;
	        }else if((cntPizza*2+cntSideDish) < cntJuice) { //
	        	return 1;
	        }else {
	        	if(cnt>=1 && checkJuice == 0) { // 누른거기 때문에 인서트.
	        		dao.insertJuice(cartVO);
	        	}else if(cnt==0){ // 삭제하기 0일 경우가 없어서 어차피 삭제 안됨.
	        		dao.delete(cartVO); //
	        	}else { // (cnt < pre_cnt){ // 업데이트. 개수 증감.
	        		dao.updatePlus(cartVO);
	        	}

	        	return 2;
	        }
	        

		}
		

/*	
	//Dough 수량 버튼을 누르면 ajax
	@ResponseBody
	@PostMapping("orderDough")	
	public void  orderDough(String name,HttpSession session) throws Exception{
		//트리플 크러스트 도우 는 도우가 없을 때 null일때.
		SideVO sideVO = new SideVO();
		CartVO cartVO = new CartVO();

		sideVO = side.readFromName(name);
		
		//user_id
		String session_id = (String)session.getAttribute("id");
		String session_id2 = (String)session.getAttribute("id2");
		if(session_id==null || session_id.equals("")) {
			cartVO.setUser_id(session_id2);
		}else {
			cartVO.setUser_id(session_id);
		}

		//order_uid : 날짜 시작
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		int random = (int) (Math.random()*10000000);
		cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성

        cartVO.setCart_id(1); //cart_id 보류
        cartVO.setName(name);
        cartVO.setPrice(sideVO.getPrice());
        cartVO.setMenu_uid(sideVO.getUid());
        cartVO.setCategory(sideVO.getCategory());
        
        //dough 개수 확인
        int check =  dao.getCountDough(cartVO);
        
        if(check == 0) {
        	dao.insert(cartVO);
        }else {
        	dao.updateDough(cartVO);
        }
	}*/
	
	
	//피자 장바구니
	@GetMapping("pizza_cart")
	public void pizzaCart(HttpSession session,Model model) throws Exception {
		//카트db에서 아이디랑 장바구니에 해당되는 값 불러오기
		String session_id = (String)session.getAttribute("id");

		String addrUid = member.getAddrUid(session_id); //아이디로 주소uid 찾기.
		if(addrUid ==null) {
		}
		else {
			if(address.selectOne(addrUid) == null) {
			}else {
				model.addAttribute(address.selectOne(addrUid));
			}
		}
		model.addAttribute("list",dao.listFromId((String)session.getAttribute("id")));
		model.addAttribute("cartCnt",dao.cartCnt(session_id));
	}
	
	/** 피자카트에 주소uid 등록하기
	 */
	@GetMapping("addrIntoCart")
	@ResponseBody
	public void addrIntoCart(String uid,HttpSession session) throws Exception {
		//카트db에서 아이디랑 장바구니에 해당되는 값 불러오기
		CartVO vo = new CartVO();
		vo.setAddress_uid(uid);
		vo.setUser_id((String)session.getAttribute("id"));
		member.updateAddr(vo);
	}
	
	//장바구니 하나 삭제	//ajax로 온건데 왜 ResponsBody 안해도 되지?
	/**
	 *  장바구니에서 x 눌렀을 떄 항목 하나 삭제하는 메소드.
	 *  피자를 눌렀을 때 사이드보다 적거나 콜라/2 보다 적으면 삭제 불가 return 0
	 *  피자 눌렀을 때 토핑도 같이 삭제 됨 return 2
	 *  사이드 메뉴 누르면 삭제 됨. return 1
	 *  
	 * @param cartVO menu_uid,cart_id, category 받고 세션아이디도 같이 cartVO에 들어감.
	 * @param session session 생성해서 세션id 불러옴.
	 * @return 0 or 1 or 2
	 * @throws Exception
	 */
	@GetMapping("deleteOne")
	@ResponseBody
	public int deleteOne(CartVO cartVO, HttpSession session) throws Exception {
		
		String session_id = (String)session.getAttribute("id");
		cartVO.setUser_id(session_id);
		
		String sumPizza = dao.sumPizza(cartVO);//피자 수량 토탈 
		String sumJuice = dao.sumJuice(cartVO);//음료 수량 토탈
		String sumSide = dao.sumSide(cartVO);//사이드 수량 토탈
		if(sumPizza == null)  sumPizza="0";
		if(sumJuice == null)  sumJuice="0";
		if(sumSide == null)  sumSide="0";
		
		int intSumPizza = Integer.parseInt(sumPizza);
		int intSumJuice = Integer.parseInt(sumJuice);
		int intSumSide = Integer.parseInt(sumSide);
		
		if(cartVO.getCategory().equals("")) {	//피자 삭제
			if(intSumPizza <= intSumSide || intSumPizza*2 <= intSumJuice) {
				return 0;	//alert('삭제 불가. 사이드 메뉴 부터 삭제 바람');
			}else {
				dao.deletePizza(cartVO);	//토핑도 같이 삭제
				
				return 2;
			}
		}else {	//사이드 삭제
			dao.deleteSideOne(cartVO);
			return 1;
		}
	}
	//장바구니 전체 삭제 
	@GetMapping("deleteAllPizza")
	@ResponseBody
	public String deleteAllPizza(HttpSession session)  throws Exception {
		String session_id = (String)session.getAttribute("id");
		dao.deletePizza(session_id);
		
		return "redirect:/cart/pizza_cart";
		
	}
	//카트 수량 체크 - ajax 이용 -> 헤더 이미지 및 개수.
	@GetMapping("cartCnt")	
	@ResponseBody
	public int cartCnt(HttpSession session)  throws Exception {
		String session_id = (String)session.getAttribute("id");
		return dao.cartCnt(session_id);
		
	}
	
	//장바구니 - 결제하기
	@GetMapping("pizza_cart_last")	
	public void pizzacart_last(HttpSession session,Model model)  throws Exception {
		//카트db에서 아이디랑 장바구니에 해당되는 값 불러오기
		String session_id = (String)session.getAttribute("id");
		
		CartVO cartVO = new CartVO();
		//order_uid : 날짜 시작!! 주문번호 order_uid 입력!!
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		int random = (int) (Math.random()*10000000);
		cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성
		cartVO.setUser_id(session_id);
		
		dao.updateOrderUid(cartVO,"장바구니to장바구니");
		
		
		String addrUid = member.getAddrUid(session_id); //아이디로 주소uid 찾기.
		
		if(addrUid ==null) {
		}
		else {
			if(address.selectOne(addrUid) == null) {
			}else {
				model.addAttribute(address.selectOne(addrUid));
			}
		}
		
		model.addAttribute("member",member.memberselect(session_id));
		model.addAttribute("list",dao.listFromId((String)session.getAttribute("id")));
		model.addAttribute("cartCnt",dao.cartCnt(session_id));
	}
	
	//카카오 페이 결제
	@GetMapping("kakao")	
	public void kakao(HttpSession session,Model model,String total_price)  throws Exception {
		model.addAttribute("sum",total_price);
		model.addAttribute("list",model);
	}
	@GetMapping("paySuccess")
	public String paySuccess(HttpSession session,OrderVO orderVO) throws Exception {
		String session_id = (String)session.getAttribute("id");
		CartVO vo = new CartVO();
		List<CartVO> list =  dao.listFromId(session_id);
		for(int i = 0; i<list.size(); i++) {	//결제완료 처리하고
			vo = list.get(i);
			dao.update(vo,"결제완료");
		}
		vo = list.get(0);
		orderVO.setUser_id(session_id);
		orderVO.setOrder_uid(vo.getOrder_uid());
		orderVO.setPay_type("카카오");
		//orderVO.setTotal_price(total_price); 그냥 들어갈껄??
		
		Date date = new Date();
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String simple = s.format(date);
		orderVO.setSigndate(simple);
		
		logger.info("paySuccess kkkkGetMa kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/ vo :"+vo);
		logger.info("paySuccess kkkkGetMa kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk/ orderVO"+orderVO);
		//orderAll에 인서트하기.
		dao.insert(orderVO,"결제 완료 된거 오더올db에 새로 넣기");
		
		return "redirect:/myPage/myOrderList";
	}
	

//	----------------------------------------------gift -------------------------------------------------------------
	
	@GetMapping("gift_cart") //상품권 장바구니 - 리스트
	public void giftCart(HttpSession session, Model model) throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("cartgift",dao.giftGet(user_id));// 장바구니 리스트
	}
	
	@PostMapping("gift") //상품권 장바구니 - '담기'버튼 클릭 후
	public String giftOrder(String pizza,HttpSession session, GiftVO vo , RedirectAttributes rttr, int count)throws Exception  {
		String user_id = (String)session.getAttribute("id");
		
		vo.setUser_id(user_id);
		int pizzaCount = dao.pizzacount(vo); //카트에 같은 피자 있는지 카운트

		if(user_id != null){
			
			if( pizzaCount >= 1) {
				
				rttr.addFlashAttribute("msg","cartCount_1");
			}else {
				
				rttr.addFlashAttribute("msg","cart_ok");
				
				vo = dao.giftSelect(pizza); //피자 하나의 정보를 불러오기
				
					//e쿠폰 랜덤값 형성
					Date now = new Date();
					SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
					String signdate = sdate.format(now);
					int random = (int) (Math.random()*10000000);
					String e_coupon = signdate+random;
					
				vo.setE_coupon(e_coupon);
				vo.setCount(count);
				vo.setUser_id(user_id); 
				dao.giftInsert(vo);
				
			}
			
		}else{
			rttr.addFlashAttribute("msg","cart_login");
		}
		return "redirect:/menu/gift";
	}
	
	@GetMapping("x") //'x'버튼 클릭 시 삭제
	public String xDelete(int uid) throws Exception{
		
		dao.giftdelete(uid);
		
		return "redirect:/cart/gift_cart";
	}

	@GetMapping("deleteAll") //'전체삭제' 버튼 클릭 시 전체삭제
	public String giftDeleteAll(HttpSession session) throws Exception{
		
		String user_id = (String)session.getAttribute("id");
		
		dao.giftDeleteAll(user_id);
		
		return "redirect:/cart/gift_cart";
	}
	
	@GetMapping("giftOrderButton") //장바구니에서 '주문하기' 버튼 클릭 시
	public String giftOrderButton(HttpSession session)throws Exception {
		
		String user_id = (String)session.getAttribute("id");
		
		//날짜 시작
		Date now = new Date();
		System.out.println(now);
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		
		int random = (int) (Math.random()*10000000);
		
		GiftVO vo = new GiftVO();
		
		vo.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성
		vo.setUser_id(user_id);
		
		dao.giftOrderUpdate(vo); //장바구니의 상품 업데이트
		logger.info(vo.toString());
		
		return "redirect:gift_cart_last";
	}
	
	@GetMapping("gift_cart_last") //상품권 마지막 결제 사이트
	public void cartLast(Model model, HttpSession session)throws Exception{

		/*
		 * for(int i=0; i<vo.size(); i++) { 
		 * System.out.println(vo);
		 * System.out.println(vo.get(i).getPizza()); }
		 */
		
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("member",dao.memberSelect(user_id)); //유저 아이디의 정보 불러오기
		model.addAttribute("cartgift", dao.giftOrderSelect(user_id));//상품권 리스트 존재
		
	}
	@GetMapping("kakao_gift")
	public void kakaoGet(HttpSession session, double total_price, Model model)throws Exception {
		String user_id = (String)session.getAttribute("id");
		MemberVO vo = dao.kakaoMember(user_id); //멤버정보 불러오기
		
		model.addAttribute("member",vo);
		model.addAttribute("total_price", total_price);
	}
	@ResponseBody
	@PostMapping("kakao_gift")
	public void kakaoPost() {
		
	}
	//무통장 입금 눌렀을 때
	@GetMapping("bank")
	public void bankGet(HttpSession session, double total_price, Model model) throws Exception {
		String user_id = (String)session.getAttribute("id");

		//'대기' 상태를 '입금대기'로 변경
		GiftVO vo1 = new GiftVO();
		vo1.setUser_id(user_id);
		vo1.setTotal_price((int)total_price);
		dao.bankUpdate(vo1);
		
		model.addAttribute("total_price",total_price);
		
	}
	//'입금 완료버튼 클릭 시 
	@GetMapping("bank_last")
	public String name(HttpSession session)throws Exception{
		String user_id = (String)session.getAttribute("id");
		
		return "redirect:/myPage/myOrderList_gift";
	}

	//쿠폰 주문 페이지
	@GetMapping("couponPage")
	public void couponPage(HttpSession session, Model model, int e_coupon)throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("address",address.addSelect(user_id)); //저장된 주소 불러오기
		//dao.cartGiftSelect(user_id); //order_uid 불러오기
		model.addAttribute("gift",dao.couponOrder(e_coupon)); //e_coupon로 cart_gift
		
		
	}	
	//쿠폰 주문 페이지
	@PostMapping("/cart/couponPage")
	public void couponPagePost(HttpSession session, Model model)throws Exception {
		String user_id = (String)session.getAttribute("id");
				
		CouponVO coupon = dao.couponSelect(user_id);//유저 아이디 정보 불러오기
		
		model.addAttribute("gift1",dao.coupon_order(coupon));//e쿠폰으로 불러온 피자 정보
		
	}
	//주소 입력 페이지
	@GetMapping("address")
	public void addressGet() throws Exception{
	}
	
	@PostMapping("addressCang")
	public String addressPost(AddressVO vo, String user_id, int e_coupon, RedirectAttributes rttr) throws Exception{
		
		logger.info("e_coupon~~~~~~~~~~~~~~~~~~~~~~~~~"+e_coupon);
		
		vo.setUser_id(user_id);
		address.add_insert(vo); //주소 값 insert
		
		rttr.addAttribute("e_coupon",e_coupon);
		return "redirect:/cart/couponPage";
	}
	
}//닫지말자
