package com.dominos.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dominos.domain.MemberVO;
import com.dominos.persistence.AdminDAO;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private AdminDAO dao;
	
	@GetMapping("memberList") //회원관리 멤버 리스트
	public void memberListGet(MemberVO vo, Model model)throws Exception {
		
		model.addAttribute("member",dao.a_memberList(vo));//멤버 리스트 존재
		
	}
	
	@GetMapping("dataList")
	public void dataListGet () throws Exception{
		
	}
}
