package com.dominos.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.MemberVO;
import com.dominos.persistence.MemberDAO;

@Controller
@RequestMapping("/myPage/")
public class MyPageController {

private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberDAO dao;
	
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
			
			rttr.addAttribute("msg","pass_no");
			return "redirect:/myPage/userInfoConfirm";
		}
		
	}
}//닫지 말자
