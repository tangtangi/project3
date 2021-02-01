package com.dominos.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.CartVO;
import com.dominos.domain.CouponVO;
import com.dominos.domain.MemberVO;
import com.dominos.persistence.CartDAO;
import com.dominos.persistence.MemberDAO;

@Controller
@RequestMapping("/member/")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberDAO dao;
	
	@Inject
	private CartDAO cart;
			
	//회원가입
	@GetMapping("join")
	public void joinGet() throws Exception{
	}
	@PostMapping("join")
	public String joinPost(MemberVO vo) throws Exception {
		
		CouponVO coupon = new CouponVO();
		
		coupon.setUser_id(vo.getId());
		
		dao.join(vo);//회원가입 인설트
		
		//e쿠폰 랜덤값 형성
		Date now = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
		String signdate = sdate.format(now);
		int random = (int) (Math.random()*10000000);
		String e_coupon = signdate+random;
		
		coupon.setE_coupon(e_coupon);
		
		dao.join_coupon(coupon); //회원가입 시 e쿠폰 발행
		
		return "redirect:/member/login";
	}
	//아이디 중복체크
	@ResponseBody //ajax 실행 시
	@PostMapping("idCheck")
	public int idCheck(String join_id)throws Exception{
		int idCheck = dao.idCheck(join_id);
		
		return idCheck;
	}
	
	//로그인
	@GetMapping("login")
	public void loginGet() throws Exception {
	}
	
	@PostMapping("login")
	public String loginPost(MemberVO vo, RedirectAttributes rttr, HttpSession session) throws Exception {
		
		int logincount;
		//세션 id2가 있고 카트_피자에 그 아이디에 해당되는값이 있으면 로그인하면 로그인 아이디로 업데이트 하고 
		
		String session_id2 = (String)session.getAttribute("id2");
		CartVO cartVO = new CartVO();
		cartVO.setUser_id(session_id2);

		int count = cart.checkFromId(session_id2);

		logincount = dao.login(vo);
		
		if(logincount == 1) {
			
			String id =	vo.getId();
			vo = dao.memberselect(id);//멤버 정보 불러오기
			
			session.setAttribute("id", id);
			session.setAttribute("pass", vo.getPass());
			session.setAttribute("name", vo.getName());
			session.setAttribute("level", vo.getLevel());
			
			if(count>=1) {	//카트_피자에 그 아이디에 해당되는값이 있으면
				//user_id 를 세션 아이디 2에서 세션아이디1으로 업데이트, 날짜도. order_uid
				
				//order_uid : 날짜 시작
				Date now = new Date();
				SimpleDateFormat sdate = new SimpleDateFormat("MMdd");
				String signdate = sdate.format(now);
				int random = (int) (Math.random()*10000000);
				cartVO.setOrder_uid(Integer.parseInt(signdate+random));//주문번호 패턴 생성
				cartVO.setSession_id2(session_id2);
				cartVO.setUser_id(id);
				
				cart.updateUser_id(cartVO);

				session.removeAttribute("id2");
				return "redirect:/cart/pizza_cart";
			}else {
				session.removeAttribute("id2");
				return "redirect:/";
			}
		}else {
			rttr.addFlashAttribute("msg","fail");
			return "redirect:/member/login";
		}
	}
	//로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) throws Exception {

		session.invalidate();
		
		return "redirect:/";
	}
	//회원수정
	@GetMapping("modify")
	public void modifyGet(@RequestParam("id2")String id2, Model model) throws Exception {
		
		model.addAttribute("modify",dao.modifyGet(id2));		
	}
	
	@PostMapping("modify")
	public String modifyPost(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		dao.modifyPost(vo);
		
		rttr.addAttribute("id2", vo.getId());		
		return "redirect:/member/modify";
	}
	//아이디 찾기
	@GetMapping("id_find")
	public void idFindGet() throws Exception {
	}
	
	@PostMapping("id_find")
	public String idFindPost(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		int idFind = dao.idFindPost(vo);
		if(idFind == 1) {
			
			vo = dao.idselect(vo); //vo에 회원 한명의 정보를 다 담음

			rttr.addFlashAttribute("find_id", vo.getId());
			rttr.addFlashAttribute("msg", "find_id");
			
			return "redirect:/member/login";
		}else {
			rttr.addFlashAttribute("msg", "id_fail");
			
			return "redirect:/member/id_find";
		}
		
	}
	
	//비밀번호 찾기
	@GetMapping("pass_find")
	public void passFindGet() throws Exception {
	}
	
	@PostMapping("pass_find")
	public String passFindPost(MemberVO vo, RedirectAttributes rttr) throws Exception {
		
		int passFind = dao.passFindPost(vo);
		if(passFind == 1) {
			
			vo = dao.passSelect(vo);
			rttr.addFlashAttribute("find_pass", vo.getPass());
			rttr.addFlashAttribute("msg","find_pass");

			return "redirect:/member/login";
			
		}else {
			rttr.addFlashAttribute("msg", "pass_fail");
			
			return "redirect:/member/pass_find";
		}
	}	
	
	//회원탈퇴
	@PostMapping("withdraw")
	public String withdraw(HttpSession session) throws Exception {
		
		String session_id = (String)session.getAttribute("id");
		
		dao.withdraw(session_id);
		session.invalidate();
		
		return "redirect:/";
		
	}
	
}//닫지마라
