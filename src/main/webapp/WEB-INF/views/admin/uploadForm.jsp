<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    

<!-- --------------------------------------------------------------------------------------------------------- -->

<style>
iframe {
	width: 0px;
	height: 0px;
	border: 0px
}
</style>
<div style="text-align: center;">
	<div class="headDiv">
		<a href="dataList">데이터 베이스 리스트 페이지로 이동.</a>&nbsp;&nbsp;
		<a href="insert">인서트페이지로 이동</a>&nbsp;&nbsp;
		<a></a>
		<a href="uploadForm">uploadForm.jsp로 이동.</a>
	</div>
</div>

<hr>
	<form id='registerForm' role="form"  action="uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame">
<!-- <form id='form1' action="uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame"> -->
		<div>
			<input name="name" placeholder="피자이름">
			<input name="price" placeholder="가격">
			<input name="size" placeholder="사이즈">
			<input name="signdate" placeholder="등록일??">
			<input name="dough" placeholder="도우">
			<input name="topping" placeholder="토핑">
			<input type="file" name="file" placeholder = "파일 이름" > 
			
			<input type='submit' value="업로드하기">
			
		</div>
	</form>
<iframe>
</iframe>
	<script>
		function addFilePath(msg) {
			alert(msg);
			document.getElementById("form1").reset(); 
			/* 리셋 - 폼 초기화. 안하면 첨부된거 그대로 있음. */
		}
	</script>
<hr>	
<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>