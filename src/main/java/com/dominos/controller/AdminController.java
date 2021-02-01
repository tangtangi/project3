package com.dominos.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dominos.domain.BbsVO;
import com.dominos.domain.CartVO;
import com.dominos.domain.GiftVO;
import com.dominos.domain.MemberVO;
import com.dominos.domain.PagingVO;
import com.dominos.domain.PizzaVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.AdminDAO;
import com.dominos.persistence.BbsDAO;
import com.dominos.persistence.CartDAO;
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

	@Inject
	private CartDAO cart;
	
	@Inject
	private BbsDAO bbs;

	@Inject
	private UploadController upload;
//	----------------------------우탁---------------------------------

	/** 전체 카트 리스트 불러오기
	 * @param cartVO
	 * @param model
	 * @throws Exception
	 */
	@GetMapping("orderListPizza") 
	public void orderListPizzaGet(CartVO cartVO,Model model)throws Exception {
		logger.info("orderListPizzaGet");
		model.addAttribute("order",cart.list());
	}

	
	/** 피자 및 사이드 메뉴 리스트 출력
	 * @param model
	 * @throws Exception
	 */
	@RequestMapping(value = "/dataList", method = RequestMethod.GET)
	public void listPage(Model model) throws Exception {
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
	}
	/**	피자 및 사이드 메뉴 등록 및 수정
	 * @param model
	 * @param pizzaVO
	 * @param sideVO
	 * @param menu
	 * @throws Exception
	 */
	@RequestMapping(value = "/dataList", method = RequestMethod.POST)
	public void listPagePost(Model model,PizzaVO pizzaVO, SideVO sideVO,String menu,MultipartFile file) throws Exception {
		if(menu.equals("pizza")) {
			pizza.update(pizzaVO);//사진 없이 업데이트
		}else { //side
		}
		
		if(file.getSize()==0) {
			System.out.println("000000000");
		}else {
			System.out.println("111111111");
			
		}
	
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
	}
	/** 피자 및 사이드 메뉴 삭제
	 * @param model
	 * @param pizzaVO
	 * @param sideVO
	 * @param menu
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/dataDeleteList", method = RequestMethod.POST)
	public String listPageDeletePost(Model model,PizzaVO pizzaVO, SideVO sideVO,String menu) throws Exception {
		if(menu.equals("pizza")) {
			pizza.delete(pizzaVO);
		}else { //side
			
		}
		model.addAttribute("pizza",pizza.list());
		model.addAttribute("side",side.listAll());
		return "redirect:/admin/dataList";
	}
	//피자, 사이드 등록 페이지.
	@GetMapping("insert") 
	public void insert()throws Exception {
	}
	
	
/////////////////////bbs////////////////////
	/** 게시판 등록 페이지
	 * @throws Exception
	 */
	@RequestMapping(value = "/bbs", method = RequestMethod.GET)
	public void bbs(Model model,PagingVO paging) throws Exception {

		List<BbsVO> list = bbs.listSearching(paging);
		String category = paging.getCategory();

		model.addAttribute("list", list);
		paging.setTotalCount(bbs.listSearchingCount(paging));
		model.addAttribute("paging",paging);
		model.addAttribute("category",category);
	}
	//뉴스, 보도 등록 페이지.
	@GetMapping("bbsInsert") 
	public void bbsInsert()throws Exception {
	}
	//뉴스, 보도 등록.
	@PostMapping("bbsInsert") 
	public void bbsInsertPost(BbsVO vo)throws Exception {
		logger.info(""+vo);
		if(vo.getSigndate() == null) {
			Date date = new Date();
			SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
			String signdate = f.format(date);
			vo.setSigndate(signdate);
		}
		bbs.insert(vo);
	}
	/**도미노 뉴스 개별 보기
	 * 
	 */
	@RequestMapping(value = "bbsView", method = RequestMethod.GET)
	public void viewGet(BbsVO vo,Model model) {
		int uid = vo.getUid();
		//게시글 불러오기
		vo = bbs.read(uid);
		//개행처리
		vo.setContent(vo.getContent().replace("\r\n", "<br>"));	
		model.addAttribute("bbs",vo);
	}
	
	/** 게시글 수정 페이지로 가기
	 * @param vo
	 * @param model
	 */
	@RequestMapping(value = "bbsModifyPage", method = RequestMethod.GET)
	public void bbsModifyPage(BbsVO vo,Model model) {
		int uid = vo.getUid();
		//게시글 불러오기
		vo = bbs.read(uid);
		//따옴표처리
//		vo.setContent(vo.getContent().replace("\"", "'"));	
//		vo.setContent(vo.getContent().replace("\r\n", "<br>"));	
		model.addAttribute("bbs",vo);
	}
	/** 게시글 수정 업데이트
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "bbsUpdate", method = RequestMethod.POST)
	public String bbsUpdate(BbsVO vo) {
		//게시글 수정
		bbs.update(vo);
		return "redirect:/admin/bbs?category=n";
	}
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(BbsVO vo) {
		int uid = vo.getUid();
		//게시글 삭제
		bbs.delete(uid);
		return "redirect:/admin/bbs?category=n";
	}
	


	
	
	//	----------------------------채윤---------------------------------
	@GetMapping("memberList") //회원관리 멤버 리스트
	public void memberListGet(MemberVO vo, Model model)throws Exception {
		
		model.addAttribute("member",dao.a_memberList(vo));//멤버 리스트 존재
		
	}
	
	
	@GetMapping("OrderList")
	public void OrderListGet () throws Exception{
		
	}
	
	//문의글 리스트
	@GetMapping("questionList")
	public void questionListGet (Model model) throws Exception{
		
		model.addAttribute("question",dao.questionList()); 
	}
	//문의글 상세 페이지
	@GetMapping("questionView")
	public void questionViewGet (int uid, Model model) throws Exception{
		
		model.addAttribute("question",dao.questionView(uid));
	}
	
	@GetMapping("answer")
	public void answerGet(int uid, Model model)throws Exception {
		
		model.addAttribute("question",dao.questionView(uid));
	}
	//답변 내용 업데이트
	@PostMapping("answerPost")
	public String answer (BbsVO vo, RedirectAttributes rttr) throws Exception{
		
		dao.answerUpdate(vo);
		
		int uid = vo.getUid();
		
		return "redirect:/admin/questionList?uid="+uid;
	}
	
	@GetMapping("OrderList_gift")
	public void OrderList_gift (Model model) throws Exception{
		
		List<GiftVO> gift = dao.OrderList_gift();
		
		model.addAttribute("gift",gift);
	}
}
