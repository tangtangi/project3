package com.dominos.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dominos.domain.MemberVO;
import com.dominos.domain.PizzaVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.AdminDAO;
import com.dominos.persistence.PizzaDAO;
import com.dominos.persistence.SideDAO;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private AdminDAO dao;
	
	@Inject
	private PizzaDAO pizza;
	
	@Inject
	private SideDAO side;
	
	@GetMapping("memberList") //회원관리 멤버 리스트
	public void memberListGet(MemberVO vo, Model model)throws Exception {
		
		model.addAttribute("member",dao.a_memberList(vo));//멤버 리스트 존재
		
	}

	@RequestMapping(value = "/dataList", method = RequestMethod.GET)
	public void listPage(Model model) throws Exception {
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
	}
	@RequestMapping(value = "/dataList", method = RequestMethod.POST)
	public void listPagePost(Model model,PizzaVO pizzaVO, SideVO sideVO,String menu) throws Exception {
	
		if(menu.equals("pizza")) {
		pizza.update(pizzaVO);
		}else { //side
		}
	
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
	}
	@RequestMapping(value = "/dataDeleteList", method = RequestMethod.POST)
	public String listPageDeletePost(Model model,PizzaVO pizzaVO, SideVO sideVO,String menu) throws Exception {
		if(menu.equals("pizza")) {
			pizza.delete(pizzaVO);
		}else { //side
			
		}
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
		return "redirect:/menu/dataList";
	}
	@GetMapping("insert")
	public void insertGet () throws Exception{
	}
}
