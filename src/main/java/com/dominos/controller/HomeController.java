package com.dominos.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dominos.domain.BbsVO;
import com.dominos.domain.PagingVO;
import com.dominos.persistence.BbsDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	BbsDAO bbs;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	@RequestMapping(value = "/moreList/service/groupOrder", method = RequestMethod.GET)
	public void group(Locale locale, Model model) {
	}
	@RequestMapping(value = "/moreList/service/mania", method = RequestMethod.GET)
	public void mania(Locale locale, Model model) {
		
	}
	@RequestMapping(value = "/moreList/bbs/faqList", method = RequestMethod.GET)
	public void faqList(Locale locale, Model model) {
		
	}
	@RequestMapping(value = "/moreList/bbs/qnaForm", method = RequestMethod.GET)
	public void qnaForm(Locale locale, Model model) {
	}
	@RequestMapping(value = "/moreList/company/contents", method = RequestMethod.GET)
	public void contents(Locale locale, Model model) {
	}
	@RequestMapping(value = "/moreList/company/tvcfList", method = RequestMethod.GET)
	public void tvcfList(Locale locale, Model model) {
	}
	
	@RequestMapping(value = "/cart/cartLast", method = RequestMethod.GET)
	public void cartLast(Locale locale, Model model) {
	}

	/**도미노 뉴스 리스트 보기
	 * 
	 */
	@RequestMapping(value = "/moreList/bbs/newsList", method = RequestMethod.GET)
	public void newsList(Model model, PagingVO paging) {
		List<BbsVO> list = bbs.listSearching(paging);
		String category = paging.getCategory();

		model.addAttribute("list", list);
		paging.setTotalCount(bbs.listSearchingCount(paging));
		model.addAttribute("paging",paging);
		model.addAttribute("category",category);
	}
	/**도미노 뉴스 개별 보기
	 * 
	 */
	@RequestMapping(value = "/moreList/bbs/newsView", method = RequestMethod.GET)
	public void viewGet(BbsVO vo,Model model) {
		int uid = vo.getUid();
		//게시글 불러오기
		vo = bbs.read(uid);
		//개행처리
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));	
		//조회수 늘리기
		bbs.update(uid);
		
		//이전, 다음 게시글 제목 불러오기, uid불러와서 클릭시 이동하기.
		String preTitle= "";
		String nextTitle= "";
		int preUid = 0;
		int nextUid = 0;
		
		int index = 0;
		List<BbsVO> list ;
		if(vo.getCategory().equals("n")) {
			list =  bbs.read("n");//n카테고리 불러오기
			for(int i = 0 ;i < list.size() ; i++) {
				if(list.get(i).getUid()==uid) index = i;	//만약 uid가 같으면 index에 값 넣기.
			}
		}else {//if(vo.getCategory().equals("n")) { p이면
			list =  bbs.read("p");//n카테고리 불러오기
			for(int i = 0 ;i < list.size() ; i++) {
				if(list.get(i).getUid()==uid) index = i;	//만약 uid가 같으면 index에 값 넣기.
			}
		}
		if(index==0)	{preTitle = "이전글이 없습니다.";preUid = list.get(0).getUid();}	//처음 글 일때.
		else	{preTitle = list.get(index-1).getTitle(); preUid = list.get(index-1).getUid();}
		
		if(index==list.size()-1)	{nextTitle = "다음글이 없습니다.";nextUid = list.get(index).getUid();}	//마지막글일 때
		else	{nextTitle = list.get(index+1).getTitle();nextUid = list.get(index+1).getUid();}
		
		
		model.addAttribute("list",vo);	//뷰 내용
		model.addAttribute("preTitle",preTitle);	//이전 글 제목
		model.addAttribute("nextTitle",nextTitle);	//다음 글 제목
		model.addAttribute("preUid",preUid);	//이전 글 uid
		model.addAttribute("nextUid",nextUid);	//다음 글 uid
	}


}
