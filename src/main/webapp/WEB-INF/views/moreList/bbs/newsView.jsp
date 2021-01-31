<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<c:if test="${param.type == 'N' }"><title>Domino's NEWS!!</title></c:if>
<c:if test="${param.type == 'P' }"><title>Report NEWS!!</title></c:if>

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
				<c:if test="${list.category == 'n' }"><a href="/moreList/bbs/newsList?category=n">도미노 뉴스</a></c:if>
				<c:if test="${list.category == 'p' }"><a href="/moreList/bbs/newsList?category=p">보도자료</a></c:if>
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<c:if test="${list.category == 'n' }"><a href="/moreList/bbs/newsList?category=n"><b>도미노 뉴스</b></a></c:if>
				<c:if test="${list.category == 'p' }"><a href="/moreList/bbs/newsList?category=n">도미노 뉴스</a></c:if>
			</div>
			<div style="padding: 0 10px;">
				<c:if test="${list.category == 'n' }"><a href="/moreList/bbs/newsList?category=p">보도자료</a></c:if>
				<c:if test="${list.category == 'p' }"><a href="/moreList/bbs/newsList?category=p"><b>보도자료</b></a></c:if>
			</div>
		</div>
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader"  style="width: 75%;">${list.title }</div>
				<div class="listHeader"  style="width: 15%;">${list.signdate }</div>
				<div class="listHeader"  style="width: 10%;">조회 ${list.views }</div>
			</div>
			<div class="listHeaderContainer" >
				<div class="listHeader">${list.content }</div>
			</div>
		</div>
		<div>
			<div class="listHeaderContainer" >
				<div>이전글 : <a href="newsView?uid=${preUid }">${preTitle }</a></div>
			</div>
			<div class="listHeaderContainer" >
				<div>다음글 : <a href="newsView?uid=${nextUid}">${nextTitle }</a></div>
			</div>
		</div>
		<!-- ------------------------------ -->
		<div>
			<div class="listHeaderContainer" style="justify-content: center;">
				<div><a href="newsList?category=n" class="listABtn">목록</a></div>
			</div>
		</div>
	</div>
		
	<div style ="width: 13.5%"></div>
</div>


<style>
	.listABtn{
	    display: inline-block;
	    width: 160px;
	    height: 83px;
	    background: black;
	    color: white;
	    text-align: center;
	    line-height: 3;
	    font-size: 26px;
	}
</style>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>