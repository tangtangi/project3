package com.dominos.domain;

import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PagingVO {
	private int page;
	private int perPageNum;
	private int totalCount; // 총 게시물 수
	private int startPage; // 시작 페이지
	private int endPage; // 끝 페이지
	private boolean prev; // 이전 링크
	private boolean next; // 다음 링크
	private int displayPageNum = 2; //블럭 갯수
	private String searchType;
	private String keyword;
	private String category;

	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public PagingVO() { //생성자. 실행이 됨과 동시에 초기화 한다.
		this.page = 1;	//초기화 값 여기서 수정하면 된다.
		this.perPageNum = 3;
	}
	//Mybatis SQL mapper - 
	//sql 구문에서 limit 시작 위치 지정
	public int getPageStart() {
		return (this.page - 1) * perPageNum; //this.는 가독성을 높여주기 위해서. 뒤에도 있으면 더 좋겠지? 
		///안되면 this.붙여 줘라.
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		//수정
		if (page <= 0) { //page값이 넘어 오지 않으면, int 기본값 0. 따라서 1로 바꿔준다.
			this.page = 1;
			return;
		}		
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0) {		//int 기본값 0. 디폴트 10으로 주겠다.
			this.perPageNum = 10; //페이지당 출력 게시물 수
			return;
		}
		this.perPageNum = perPageNum;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		//위 메소드 불러오기
		calcData();
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	private void calcData() {
		endPage = (int)(Math.ceil(this.getPage() / (double)displayPageNum)*displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		
		//마지막 블럭일 경우
		int tempEndPage = (int)(Math.ceil(totalCount/(double)this.getPerPageNum()));
		if(endPage > tempEndPage) {endPage = tempEndPage;}
		
		prev = startPage == 1 ? false : true;	//이전 버튼
		next = endPage * this.getPerPageNum() >= totalCount ? false:true;	//다음 버튼
	}

	// search 추가
	public String makeSearch(int page) {

		UriComponents uriComponents = UriComponentsBuilder.newInstance()
			.queryParam("page", page)
			.queryParam("perPageNum", this.getPerPageNum())
			.queryParam("searchType", this.getSearchType())
			.queryParam("keyword",  this.getKeyword())
			.queryParam("category",  this.getCategory())
			//.queryParam("keyword", encoding(((SearchCriteria) cri).getKeyword()))
			.build();

		return uriComponents.toUriString();
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", this.getPerPageNum())
				.queryParam("searchType", this.getSearchType())
				//.queryParam("keyword", this.getKeyword())
				.queryParam("keyword", encoding(this.getKeyword()))
				.queryParam("category",  this.getCategory())
				.build();
		return uriComponents.toUriString();
	}
	private String encoding(String keyword) {
		if(keyword == null || keyword.trim().length()==0) {
			return "";
		}
		try {
			return URLEncoder.encode(keyword,"UTF-8");
		} catch (Exception e) {
			return "";
		}
		
	}
}
