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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
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
	
	//////////////////우탁///////////////////////////////////
	@GetMapping("geoLocation")
	public void geoLocation() throws Exception {
		logger.info("geoLocation get~~~~");
	}
	//////////////////우탁///////////////////////////////////
	
	//회원수정 비밀번호 확인
	@GetMapping("userInfoConfirm")
	public void modifyGet() throws Exception {
	}
	@PostMapping("userInfoConfirm")
	public String modifyPost(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		int passCount = member.modifyPass(vo);
		logger.info("passCountpassCountpassCountpassCount"+passCount);
		if(passCount == 1) {
			
			rttr.addAttribute("id2",vo.getId());
			return "redirect:/member/modify";
			
		}else {
			
			rttr.addAttribute("msg","pass_no");
			return "redirect:/myPage/userInfoConfirm";
		}
		
	}

	//주문 내역 - 피자
	@GetMapping("myOrderList")
	public void myOrderList()throws Exception {
	}
	
	
	//결제 성공 후 DB내용을 '결제 완료'라고 바꾸기
	@GetMapping("e_couponList")
	public String e_couponList(HttpSession session, RedirectAttributes rttr, String total_price)throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		//e 쿠폰 랜덤값 생성하기
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		int random = (int) (Math.random()*10000000);
		String e_coupon = signdate+random;
		
		//장바구니 '대기'-->'결제완료'로 변경
		GiftVO vo = new GiftVO();
		vo.setUser_id(user_id);
		vo.setE_coupon(e_coupon);
		dao.e_couponList(vo);
		
		//orderAll 테이블에 담기
		vo = dao.orderSelect(user_id); //user_id의 최근 정보 가져오기
		logger.info(vo.toString()+"+++++++++++++++++++++++++++++");
		dao.orderAll_insert(vo);
		
		
		
		return "redirect:/myPage/myOrderList_gift";
	}
	
	//주문 내역 - 상품권 
	@GetMapping("myOrderList_gift")
	public void myOrderList_gift(HttpSession session)throws Exception {
		String user_id = (String)session.getAttribute("id");
		
		dao.giftselect(user_id);
	}
	
	
	//////////////////////

	@RequestMapping(value = "maniaGrade", method = RequestMethod.GET)
	public void maniaGrade(Locale locale, Model model) {
		logger.info("maniaGrade");
	}
	@RequestMapping(value = "myCoupon", method = RequestMethod.GET)
	public void myCoupon(Locale locale, Model model) {
		logger.info("myCoupon");
	}
	@RequestMapping(value = "questionList", method = RequestMethod.GET)
	public void questionList(Locale locale, Model model) {
		logger.info("questionList");
	}
}//닫지 말자
