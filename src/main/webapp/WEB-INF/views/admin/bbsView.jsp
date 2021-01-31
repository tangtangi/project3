<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>

<!-- css 불러오기 -->
<link rel="stylesheet" href="/css/news.css">

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader"  style="width: 75%;">${bbs.title }</div>
				<div class="listHeader"  style="width: 15%;">${bbs.signdate }</div>
				<div class="listHeader"  style="width: 10%;">조회 ${bbs.views }</div>
			</div>
			<div class="listHeaderContainer" >
				<div class="listHeader">${bbs.content }</div>
			</div>
		</div>
		
		<div>
		
			<div class="listHeaderContainer" >
				<div class="listHeader"><a href="bbsModifyPage?uid=${bbs.uid }">[수정하기]</a></div>
				<div class="listHeader"><a href="delete?uid=${bbs.uid }">[삭제하기]</a></div>
				<div class="listHeader"><a href="javascript:void(0)" onclick="history.back()">[뒤로가기]</a></div>
			</div>
		</div>
		<!-- ------------------------------ -->
	
		
	</div>
		
	<div style ="width: 13.5%"></div>
</div>


<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>