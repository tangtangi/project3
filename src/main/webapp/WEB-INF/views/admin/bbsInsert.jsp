<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    

<!-- --------------------------------------------------------------------------------------------------------- -->

<div style="text-align: center;">
	<div class="headDiv">
		<a href="bbs?category=n">뉴스 리스트 페이지.</a>&nbsp;&nbsp;
		<a href="bbsInsert" style="color: black;"><b>뉴스 인서트!</b></a>&nbsp;&nbsp;
		<a></a>
	</div>
</div>
<div style="text-align: center;">뉴스 입력 : 
	<form action="bbsInsert" method="post" >
		<div>
			<input name="title" placeholder="title" maxlength="50">
			<textarea name="content" placeholder="content"></textarea>
			<label><input type="radio" name="category" value="n" placeholder="뉴스" >n</label>
			<label><input type="radio" name="category" value="p" placeholder="보도" checked>p</label>
			<input name="signdate" placeholder="등록일" value="2021-01-29">
			
			<input type="file" name="file">
			<input type="submit">
		</div>
</form>
</div>



<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>