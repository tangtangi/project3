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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.BbsVO;
import com.dominos.domain.CartVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.OrderGiftVO;
import com.dominos.persistence.CartDAO;
import com.dominos.persistence.MemberDAO;
import com.dominos.persistence.MyPageDAO;

@Controller
@RequestMapping("/myPage/")
public class MyPageController {

private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Inject
	private MyPageDAO dao;
	
	@Inject
	private MemberDAO member;

	@Inject
	private CartDAO cart;
	
//	---------------------------------------------- pizza------------------------------------------------
	//주문 내역 - 피자
	
	@GetMapping("geoLocation")
	public void geoLocation() throws Exception {
		logger.info("geoLocation get~~~~");
	}
	@GetMapping("detail")
	public void detail(String order_uid,HttpSession session,Model model) throws Exception {
		logger.info("detail get~~~~"+order_uid);
		String session_id = (String)session.getAttribute("id");
		CartVO vo = new CartVO();
		vo.setUser_id(session_id);
		vo.setOrder_uid(Integer.parseInt(order_uid));
		
		model.addAttribute("order",cart.listFromOrderUID(vo));
		
	}
	
	//주문 내역 - 피자
	@GetMapping("myOrderList")
	public void myOrderList(HttpSession session,Model model)throws Exception {

		String user_id = (String)session.getAttribute("id");
		String name = dao.memberSelect(user_id); //멤버 정보 불러오기
		
		model.addAttribute("name",name); 
		model.addAttribute("pizza",dao.pizzaSelect(user_id));
	}
	
	@RequestMapping(value = "maniaGrade", method = RequestMethod.GET)
	public void maniaGrade(Locale locale, Model model, HttpSession session) throws Exception {
		String user_id = (String)session.getAttribute("id");
		String name = dao.memberSelect(user_id); //멤버 정보 불러오기
		
		model.addAttribute("name",name); 
	}
	@RequestMapping(value = "myCoupon", method = RequestMethod.GET)
	public void myCoupon(Locale locale, Model model) {
	}
	
//	---------------------------------------------- gift------------------------------------------------	
	//회원수정 비밀번호 확인
	@GetMapping("userInfoConfirm")
	public void modifyGet() throws Exception {
	}
	@PostMapping("userInfoConfirm")
	public String modifyPost(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		int passCount = dao.modifyPass(vo);
		logger.info("passCountpassCountpassCountpassCount"+passCount);
		
		if(passCount == 1) {
			
			rttr.addAttribute("id2",vo.getId());
			return "redirect:/member/modify";
			
		}else {
			
			rttr.addFlashAttribute("msg","pass_no");
			return "redirect:/myPage/userInfoConfirm";
		}
		
	}
	
	
	//결제 성공 후 DB내용을 '결제 완료'라고 바꾸기
	@GetMapping("e_couponList")
	public String e_couponList(HttpSession session, RedirectAttributes rttr, int total_price)throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		logger.info("총 금액 결과 : "+total_price);
		
		//장바구니 '대기'-->'결제완료'로 변경, total_price추가
		GiftVO vo = new GiftVO();
		vo.setUser_id(user_id);
		vo.setTotal_price(total_price);
		dao.e_couponList(vo);
		
		//orderAll 테이블에 담기
		vo = dao.orderSelect(user_id); //user_id의 최근 정보 가져오기
		
			//결제 날짜 구하기
			Date now1 = new Date();
			SimpleDateFormat sdate1 = new SimpleDateFormat("yyyy-MM-dd hh:mm");
			String signdate1 = sdate1.format(now1);
			
			vo.setSigndate(signdate1);
		
		dao.orderAll_insert(vo);
		
		//coupon 테이블에 담기
		OrderGiftVO vo2 = dao.couponSelect(user_id); //주문번호로 cart_gift 
		int order_uid = vo2.getOrder_uid();
		
		List<GiftVO> gift = dao.orderList(order_uid);//주문 번호 같은 리스트 뽑기
		
			
			for(int i = 0; i < gift.size() ; i++) {
				//gift.setE_coupon(gift.get(i).getE_coupon());
				dao.order_insert(gift.get(i)); //coupon 테이블에 인설트
			}
			
		rttr.addAttribute("order_uid",vo2.getOrder_uid());
		return "redirect:/myPage/myOrderView_gift";
	}
	
	//주문 내역 - 상품권 
	@GetMapping("myOrderList_gift")
	public void myOrderList_gift(HttpSession session, Model model)throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		
		List<OrderGiftVO> OrderGift = dao.giftSelect(user_id); //order_all 주문 내역뽑기
		
		model.addAttribute("order",OrderGift);//e쿠폰 주문 페이지
		
		String name = dao.memberSelect(user_id); //멤버 정보 불러오기
		model.addAttribute("name",name); 
	}
	
	//gift 주문 상세 페이지 
	@GetMapping("myOrderView_gift")
	public void myOrderView_gift(int order_uid, Model model, HttpSession session)throws Exception {
		
		String user_id = (String)session.getAttribute("id");
		
		model.addAttribute("gift",dao.viewGift(order_uid));//주문번호로 구매 내역 조회
		model.addAttribute("order",dao.viewGift_order(order_uid)); //주문번호로 order_all select
		model.addAttribute("coupon",dao.couponView(user_id)); //쿠폰 조회하기
		
		String name = dao.memberSelect(user_id);//멤버 정보 불러오기
		model.addAttribute("name",name); 
		
	}
	
	//문의하기
	@GetMapping("questionList")
	public void questionListGet(HttpSession session, Model model) throws Exception{
		String id = (String)session.getAttribute("id");
		
		model.addAttribute("question",dao.questionList(id)); //문의글 리스트
		model.addAttribute("member",dao.member_select(id)); //회원 정보 불러오기
	}
	
	//문의하기 버트 누른 후
	@GetMapping("question")
	public void questionGet(HttpSession session, Model model)throws Exception {
		String id = (String)session.getAttribute("id");
		
		model.addAttribute("member",dao.member_select(id)); //회원 정보 불러오기
	}
	
	//문의하기 insert
	@PostMapping("questionForm")
	public String questionForm(String user_id, BbsVO vo)throws Exception {
		
		//날짜 시작
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String signdate = sdate.format(now);
		
		vo.setUser_id(user_id);
		vo.setSigndate(signdate);
		
		dao.question_insert(vo);
		
		return "redirect:/myPage/questionList";
	}
	
	//문의하기 상세페이지
	@GetMapping("questionView")
	public void questionView(int uid, Model model, HttpSession session)throws Exception{
		String user_id = (String)session.getAttribute("id");
		
		String name = dao.memberSelect(user_id);//멤버 정보 불러오기
		
		model.addAttribute("name",name); 
		model.addAttribute("question",dao.questionView(uid)); //uid로 문의내용 불러오기
	}	
	
	//문의 상세 삭제 
	@GetMapping("question_delete")
	public String question_delete(int uid)throws Exception {
		dao.question_delete(uid);
		
		return "redirect:/myPage/questionList";
	}
}//닫지 말자
