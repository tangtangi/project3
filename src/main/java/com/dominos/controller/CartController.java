package com.dominos.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.CartVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.PizzaVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.CartDAO;
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
	
/*
	@PostMapping("pizzaCount")
	public String  pizzaCount(String msg) throws Exception{
		return "redirect:/cart/pizza_cart";
	}
*/	

	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public void cart(Locale locale, Model model) {
		logger.info("cart");
	}
	@RequestMapping(value = "cart2", method = RequestMethod.GET)
	public void cart2(Locale locale, Model model) {
		logger.info("cart2");
	}
	@RequestMapping(value = "/cart3", method = RequestMethod.GET)
	public void cart3(Locale locale, Model model) {
		logger.info("cart3");
	}
	
	//장바구니 담기 누르면 --> 넘어옴.
	@PostMapping("orderPizza")	
	public String  orderPizzaPost(CartVO cartVO,HttpSession session) throws Exception{
		cartVO.setCart_id(1); //cart_id 보류
		String getSize = cartVO.getSize(); 
		String uid = Integer.toString(cartVO.getMenu_uid());
		PizzaVO pizzaVO = new PizzaVO();
		pizzaVO = pizza.read(uid);
		
		
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
		String maxCart_id = "1";
		System.out.println(cartVO.getClass().getName());
		if(dao.getMaxCart_id()==null) { ////피자인 것 중에서 가장 큰 카트아이디 값 찾기
			maxCart_id = "1";
		}else {
			maxCart_id = dao.getMaxCart_id();
		}
		cartVO.setCart_id(Integer.parseInt(maxCart_id)+1); 
		logger.info("orderPizzaPost~~~~~~~~~~~~~~~~~~~~~"+cartVO);
		
		
		dao.insert(cartVO);
		
		if(session_id==null || session_id.equals("")) {
			return "redirect:/member/login";
		}else {
			dao.updateOrderUid(cartVO);
			return "redirect:/cart/pizza_cart";
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
		System.out.println(cartVO.getClass().getName());
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
        System.out.println("cnt :" + cnt + ",check : "+check);

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
        System.out.println("name :" + name );
	}*/
	
	
	//피자 장바구니
	@GetMapping("pizza_cart")
	public void pizzaCart(HttpSession session,Model model) throws Exception {
		//카트db에서 아이디랑 장바구니에 해당되는 값 불러오기
		
		model.addAttribute("list",dao.listFromId((String)session.getAttribute("id")));
		String session_id = (String)session.getAttribute("id");
		model.addAttribute("cartCnt",dao.cartCnt(session_id));
		logger.info("pizzaCart~~~Get~~~"+model);
	}
	
	//장바구니 하나 삭제	//ajax로 온건데 왜 ResponsBody 안해도 되지?
	@GetMapping("deleteOne")
	@ResponseBody
	public int deleteOne(CartVO cartVO, HttpSession session) throws Exception {
		logger.info("deleteOne get~~~~~~~~~~uid:" + cartVO);
		
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
				dao.deletePizzaOne(cartVO);	//토핑도 같이 삭제
				
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
		logger.info("deleteAllPizza get~~~~~~~~~~");
		String session_id = (String)session.getAttribute("id");
		dao.deletePizzaAll(session_id);
		
		return "redirect:/cart/pizza_cart";
		
	}
	//카트 수량 체크 - ajax 이용 -> 헤더 이미지 및 개수.
	@GetMapping("cartCnt")	
	@ResponseBody
	public int cartCnt(HttpSession session)  throws Exception {
		logger.info("cartCnt get~~~~~~~~~~");
		String session_id = (String)session.getAttribute("id");
		return dao.cartCnt(session_id);
		
	}
	
	//장바구니 - 결제하기
	@GetMapping("pizza_cart_last")	
	public void pizza_cart_last(HttpSession session)  throws Exception {
		logger.info("pizza_cart_last get~~~~~~~~~~");
	}
	
	//카카오 페이 결제
	@GetMapping("kakao")	
	public void kakao(HttpSession session)  throws Exception {
		logger.info("kakao get~~~~~~~~~~");
	}
///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//상품권 장바구니 - 리스트
	@GetMapping("gift_cart")
	public void giftCart(HttpSession session, Model model) throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("cartgift",dao.giftGet(user_id));// 장바구니 리스트
	}
	
	//상품권 장바구니 - '담기'버튼 클릭 후
	@PostMapping("gift")
	public String giftOrder(String pizza,HttpSession session, GiftVO vo , RedirectAttributes rttr)throws Exception  {
		String user_id = (String)session.getAttribute("id");
		
		vo.setUser_id(user_id);
		int pizzaCount = dao.pizzacount(vo); //카트에 같은 피자 있는지 카운트

		if(user_id != null){
			
			if( pizzaCount >= 1) {
				
				rttr.addFlashAttribute("msg","cartCount_1");
			}else {
				
				rttr.addFlashAttribute("msg","cart_ok");
				
				vo = dao.giftSelect(pizza); //피자 하나의 정보를 불러오기
				vo.setUser_id(user_id); 
				dao.giftInsert(vo);
				
				logger.info("+++++++++++++++++++++++++"+vo.toString());
			}
			
		}else{
			rttr.addFlashAttribute("msg","cart_login");
		}
		return "redirect:/menu/gift";
	}
	
	//'x'버튼 클릭 시 삭제
	@GetMapping("x")
	public String xDelete(int uid) throws Exception{
		
		dao.giftdelete(uid);
		
		return "redirect:/cart/gift_cart";
	}
	
	//'전체삭제' 버튼 클릭 시 전체삭제
	@GetMapping("deleteAll")
	public String giftDeleteAll(HttpSession session) throws Exception{
		
		String user_id = (String)session.getAttribute("id");
		
		dao.giftDeleteAll(user_id);
		
		return "redirect:/cart/gift_cart";
	}
	

	
	
}//닫지말자
