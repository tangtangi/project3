package com.dominos.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	@RequestMapping(value = "/moreList/service/groupOrder", method = RequestMethod.GET)
	public void group(Locale locale, Model model) {
		logger.info("group.");
		
	}
	@RequestMapping(value = "/moreList/service/mania", method = RequestMethod.GET)
	public void mania(Locale locale, Model model) {
		logger.info("mania");
		
	}
	@RequestMapping(value = "/moreList/bbs/faqList", method = RequestMethod.GET)
	public void faqList(Locale locale, Model model) {
		logger.info("faqList");
		
	}
	@RequestMapping(value = "/moreList/bbs/qnaForm", method = RequestMethod.GET)
	public void qnaForm(Locale locale, Model model) {
		logger.info("qnaForm");
	}
	@RequestMapping(value = "/moreList/company/contents", method = RequestMethod.GET)
	public void contents(Locale locale, Model model) {
		logger.info("contents");
	}
	@RequestMapping(value = "/moreList/company/tvcfList", method = RequestMethod.GET)
	public void tvcfList(Locale locale, Model model) {
		logger.info("tvcfList");
	}
	@RequestMapping(value = "/moreList/bbs/newsList", method = RequestMethod.GET)
	public void newsList(Locale locale, Model model) {
		logger.info("newsList");
	}
	@RequestMapping(value = "/myPage/maniaGrade", method = RequestMethod.GET)
	public void maniaGrade(Locale locale, Model model) {
		logger.info("maniaGrade");
	}
	@RequestMapping(value = "/myPage/myCoupon", method = RequestMethod.GET)
	public void myCoupon(Locale locale, Model model) {
		logger.info("myCoupon");
	}
	@RequestMapping(value = "/myPage/myOrderList", method = RequestMethod.GET)
	public void myOrderList(Locale locale, Model model) {
		logger.info("myOrderList");
	}
	@RequestMapping(value = "/myPage/questionList", method = RequestMethod.GET)
	public void questionList(Locale locale, Model model) {
		logger.info("questionList");
	}
	@RequestMapping(value = "/cart/cartLast", method = RequestMethod.GET)
	public void cartLast(Locale locale, Model model) {
		logger.info("cartLast");
	}


}
