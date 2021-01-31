package com.dominos.controller;

import java.io.File;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dominos.domain.GiftVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.CartDAO;
import com.dominos.persistence.GiftDAO;
import com.dominos.persistence.PizzaDAO;
import com.dominos.persistence.SideDAO;

@Controller
@RequestMapping("/menu")
public class MenuController {

   private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

   @Inject
   public PizzaDAO pizza;
   
   @Inject
   public SideDAO side;
   
   @Inject
   public CartDAO cart;

   @Inject
   private GiftDAO dao;

//   ----------------------------------------------pizza -------------------------------------------------------------
   
//   @Resource(name = "uploadPath")
//   private String uploadPath;
   // 피자 리스트 불러오기
   @RequestMapping(value = "/list", method = RequestMethod.GET) 
   public void list(Locale locale, Model model, String menu) throws Exception{
      if(menu.equals("pizza")) {
         model.addAttribute("list", pizza.list());
      }else { //sidedish 거나 juice 거나.
         model.addAttribute("list", side.list(menu)); 
      }
      model.addAttribute("menu", menu);
      
   }

   //리스트 사이드 메뉴 등록 및 삭제
   @RequestMapping(value = "/list", method = RequestMethod.POST)
   public void listPost(SideVO vo,@ModelAttribute("x") String x) throws Exception {
      
      if(x.equals("1")) {
         side.delete();
      }else {
         side.create(vo);
      }
   }
   
   //피자든 사이드 메뉴든 view 페이지로 이동.
   @RequestMapping(value = "/view", method = RequestMethod.GET)   
   public void view(Model model, String uid, String menu,HttpSession session) throws Exception {

		//user_id
      	String session_id= (String)session.getAttribute("id"); 
		String session_id2 = (String)session.getAttribute("id2");
		String user_id;
		if(session_id==null || session_id.equals("")) {
			user_id = session_id2;
		}else {
			user_id = session_id;
		}
		cart.deleteAll(user_id);//카트 내용 다 지우기
		
		//비회원 세션 처리.
		if(session_id == null || session_id.equals("")  ) {
		String id2 = Integer.toString((int)(Math.random()*10000000));
		session.setAttribute("id2", id2);
		}
      
      if(menu.equals("pizza")) { //피자면 
         try {
            model.addAttribute("list",pizza.read(uid));
            model.addAttribute("dough",side.list("dough"));
            model.addAttribute("sidedish",side.list("sidedish"));
            model.addAttribute("juice",side.list("juice"));
            model.addAttribute("topping",side.list("topping"));
         } catch (Exception e) {
            e.printStackTrace();
         }
      }else { //사이드디시 이면 
         try {
            model.addAttribute("list",side.read(uid));
            model.addAttribute("juice",side.list("juice"));
         } catch (Exception e) {
            e.printStackTrace();
         }
      }

      model.addAttribute("menu",menu);
      
   }
   @RequestMapping(value = "/viewSide", method = RequestMethod.GET)
   public void viewSide(Model model, String uid, String menu,HttpSession session) throws Exception {
      if(menu.equals("pizza")) { //피자면 
         try {
            model.addAttribute("list",pizza.read(uid));
            model.addAttribute("dough",side.list("dough"));
            model.addAttribute("sidedish",side.list("sidedish"));
            model.addAttribute("juice",side.list("juice"));
            model.addAttribute("topping",side.list("topping"));
         } catch (Exception e) {
            e.printStackTrace();
         }
      }else { //사이드디시 이면 
         try {
            model.addAttribute("list",side.read(uid));
            model.addAttribute("juice",side.list("juice"));
         } catch (Exception e) {
            e.printStackTrace();
         }
      }
      	//user_id
      String session_id = (String)session.getAttribute("id");
		String session_id2 = (String)session.getAttribute("id2");
		String user_id;
		if(session_id==null || session_id.equals("")) {
			user_id = session_id2;
		}else {
			user_id = session_id;
		}
      cart.deleteAll(user_id);//카트 내용 다 지우기
      model.addAttribute("menu",menu);

      //비회원 세션 처리.
	if(session_id == null || session_id.equals("")  ) {
	String id2 = Integer.toString((int)(Math.random()*10000000));
	session.setAttribute("id2", id2);
	}
      
   }
   /*
   //view 페이지 - 카트 담기 - 토핑 +,- 누르면 하단 영역 등등 ajax로 하려다가 안한것!!
   //ajax로 받으려면 responseBody 선언
   @ResponseBody
   @RequestMapping(value = "/view",method = RequestMethod.POST)
   public Map<String, Object> viewCart(Model model, String side_uid, String menu, String count,String pizzaUid) throws Exception{
      
      
      //넘어오는 side_uid 는 side의 uid
      //menu는 pizza /side
      logger.info("view Post...... " );
      logger.info("model:" + model );
      logger.info("side_uid : " + side_uid );
      logger.info("menu : " + menu);
      logger.info("count : " + count);
      logger.info("pizzaUid : " + pizzaUid);
      
      int cnt = Integer.parseInt(count);
      if(menu.equals("pizza")) { //피자면 
         try {
            logger.info("피자다");
            SideVO sideVO = new SideVO();
            CartVO cartVO = new CartVO();
            
            sideVO = side.read(side_uid);
            String sideName = sideVO.getName();
            //토핑 이름으로 카트에 있는지 없는지 판별.-> 없으면 인서트, 없으면 감소
            int check = cart.getInt(sideName);

            int pre_cnt = 0;
            if(check!=0) {
               pre_cnt = cart.getCount(sideName);
            }
            
            cartVO.setCart_id(1); //cart_id 보류
            cartVO.setName(sideVO.getName());
            cartVO.setPrice(sideVO.getPrice());
            cartVO.setCount(cnt);
            cartVO.setSize("L"); //size 보류
            cartVO.setMenu_uid(Integer.parseInt(pizzaUid));
            cartVO.setCategory(sideVO.getCategory());


            if(cnt==1 && check == 0) { // 누른거기 때문에 인서트.
               cart.insert(cartVO);
            }else if(cnt==0){ // 삭제하기
               cart.delete(cartVO);
            }else { // (cnt < pre_cnt){ // 업데이트. 개수 증감.
               cart.update(cartVO);
            }
            System.out.println("cnt :" + cnt + ",check : "+check);

         } catch (Exception e) {
            e.printStackTrace();
         }
      }else { //사이드디시 이면 
         try {
            logger.info("사이드디시다");
            model.addAttribute("list",side.read(side_uid));
         } catch (Exception e) {
            e.printStackTrace();
         }
      }
//      model.addAttribute("sidedish",cart.list("sidedish"));
//      model.addAttribute("juice",cart.list("juice"));
//      model.addAttribute("topping",cart.list("topping"));
      
      model.addAttribute("dough",side.read(side_uid)); //음...뭐더라..
      model.addAttribute("menu",menu);
      logger.info("```"+model);
      
      List<Map<String, Object>> listMap = new ArrayList<Map<String, Object>>();
      Map<String, Object> paramMap = new HashMap<String, Object>();

      paramMap.put("topping",cart.list("topping"));
      //listMap.add(paramMap);
      paramMap.put("juice",cart.list("juice"));
      //listMap.add(paramMap);
      paramMap.put("sidedish",cart.list("sidedish"));
      //listMap.add(paramMap);
      
      //String result = "{\"list\":[{\"uid\":\"1\"},{\"uid\":\"2\"}]}";
      System.out.println("===map: "+paramMap);
      return paramMap;
   }
   */
   
//	----------------------------------------------event -------------------------------------------------------------
	@GetMapping("event")
	public void eventGet () {
		
	}
	
	@GetMapping("eventInfo")
	public void eventInfoGet () {
		
	}
	
	@GetMapping("store")
	public void storeGet () {
		
	}
	
	@GetMapping("coupon")
	public void couponGet () {
		
	}
	
	
//	----------------------------------------------gift -------------------------------------------------------------
	
	@GetMapping("giftInfo") //gift info 페이지
	public void giftInfo() throws Exception{
		
	}
	
	@GetMapping("gift") //gift 페이지
	public void gift(Model model, HttpSession session) throws Exception{
		model.addAttribute("gift",dao.giftList());// 피자 리스트 존재
	}
	
	@Resource(name = "uploadPath") // 첨부파일 저장 경로
	private String uploadPath;
	// servlet-context.xml에 있는 bean id="uploadPath" 경로 매칭 	
	
	@PostMapping("gift") //gift 페이지 글쓰기
	public void giftWrite(GiftVO vo, MultipartFile file, Model model) throws Exception {
		
		//한글 파일 이름이 깨진다면 web.xml에 한글 처리용 필터를 적용
		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		logger.info(""+vo.toString());
		vo.setImage_o(file.getOriginalFilename());
		vo.setImage(savedName);
		
		dao.giftWrite(vo);	
		
		model.addAttribute("savedName", savedName);
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		// UUID 중복되지 않는 고유한 키 값을 설정할 때 사용
		// uploadFile()은 원본 파일의 이름과 파일 데이터를 byte[]로 변환한 정보를 파라미터로 처리해서 실제로 파일 업로드한다.
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// import java.io.File; 
		File target = new File(uploadPath, savedName);


		// FileCopyUtils는 'org.springframework.util' 패키지에 설정된 클래스(실제 파일 처리)
		FileCopyUtils.copy(fileData, target);


		return savedName;
	}
}