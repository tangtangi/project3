<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
iframe {
	width: 0px;
	height: 0px;
	border: 0px
}
</style>

</head>
<body>
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
		</div>
		<input type='submit' value="확인">
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
</body>
</html>