<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<c:if test="${category == 'n' }"><title>Domino's NEWS!!</title></c:if>
<c:if test="${category == 'p' }"><title>Report NEWS!!</title></c:if>
<!-- css 불러오기 -->
<link rel="stylesheet" href="/css/news.css">

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>공지사항</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/bbs/newsList?category=n">공지사항</a> > 
				<c:if test="${category == 'n' }"><a href="/moreList/bbs/newsList?category=n">도미노 뉴스</a></c:if>
				<c:if test="${category == 'p' }"><a href="/moreList/bbs/newsList?category=p">보도자료</a></c:if>
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<c:if test="${category == 'n' }"><a href="/moreList/bbs/newsList?category=n"><b>도미노 뉴스</b></a></c:if>
				<c:if test="${category == 'p' }"><a href="/moreList/bbs/newsList?category=n">도미노 뉴스</a></c:if>
			</div>
			<div style="padding: 0 10px;">
				<c:if test="${category == 'n' }"><a href="/moreList/bbs/newsList?category=p">보도자료</a></c:if>
				<c:if test="${category == 'p' }"><a href="/moreList/bbs/newsList?category=p"><b>보도자료</b></a></c:if>
			</div>
		</div>
		<!-- ////////////////////////////////////////////////////////////////////// -->
		<div style="display: flex;justify-content: center;padding: 30px 0 0 0 ;" >
			<form method="get">
				<select style="border: 1px solid lightgrey;" name="searchType">
					<option value="t">제목</option>
					<option value="c">내용</option>
					<option value="tc">제목+내용</option>
				</select>
				<input class="form_input" style="margin: 0 10px;" name='keyword' value='${paging.keyword }'>
				<input type="hidden" name='category' value='${category }'>
<!-- 				<button class="btn" onclick="location.href='/'"><img style="width: 30px; cursor: pointer;" alt="a" src='/image/Magnifier.png'></button> -->
				<input type="image" src="/image/Magnifier.png" style="width: 30px; cursor: pointer; outline: 0;" alt="a" >
			</form>
		</div>
		<div class="box_head" style="display: flex;justify-content: flex-end;" >
			<div style= "float: right; font-size: 15px; color: #888;"> 총 ${paging.totalCount }건 </div>
		</div>
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">번호</div>
				<div class="listHeader"  style="width: 65%;">제목</div>
				<div class="listHeader"  style="width: 15%;">등록일</div>
				<div class="listHeader"  style="width: 10%;">조회</div>
			</div>
			<!-- ///////////////////////////////////// -->
			<c:set var="number" value="${paging.totalCount - (paging.page - 1) * paging.perPageNum }" /> 
			<c:forEach items="${list }" var="list" varStatus="status">
				<div class="listHeaderContainer" >
					<div class="listHeader" style="width: 10%;">${number }</div>
					<div class="listHeader"  style="width: 65%;"><a href="/moreList/bbs/newsView?uid=${list.uid }">${list.title }</a></div>
					<div class="listHeader"  style="width: 15%;">${list.signdate }</div>
					<div class="listHeader"  style="width: 10%;">${list.views }</div>
				</div>
			<c:set var="number" value="${number - 1 }"/>
			</c:forEach>
		</div>
		
		<!-- ------------------------------ -->
	
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader2" style="width: 30%;"></div>
				<div class="listHeader2"  style="width: 10%;">
					
					<c:if test="${paging.prev}">
						<a href="newsList${paging.makeSearch(paging.startPage - 1)}">&laquo;</a>
					</c:if>
				</div>
				<div class="listHeader2"  style="width: 20%;">
					<c:forEach var="idx" begin="${paging.startPage }" end="${paging.endPage }">
							<c:if test="${paging.page == idx}"><b></c:if>
							<a href="newsList${paging.makeSearch(idx)}">${idx} </a>
							<c:if test="${paging.page == idx}"></b></c:if>
					</c:forEach>
				</div>
				<div class="listHeader2"  style="width: 10%;">
					<c:if test="${paging.next && paging.endPage > 0}">
						<a href="newsList${paging.makeSearch(paging.endPage +1)}">&raquo;</a>
					</c:if>
				</div>
				<div class="listHeader2"  style="width: 30%;"></div>
			</div>
		</div>
		
	</div>
		
	<div style ="width: 13.5%"></div>
</div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>