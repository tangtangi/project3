<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    

<!-- --------------------------------------------------------------------------------------------------------- -->
<a href="/menu/insert">인서트페이지로 이동</a>
<a></a>
<a href="/uploadForm">/uploadForm.jsp로 이동.</a>
<a href="dataList">//dataList.jsp로 이동.</a>

<!-- <form id='registerForm' role="form"  action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame"> -->
<form id='form1' action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame">
	<div>
		<input name="name" placeholder="피자이름">
		<input name="price" placeholder="가격">
		<label><input type="radio" name="size" value="L" placeholder="사이즈" checked>L</label>
		<label><input type="radio" name="size" value="M" placeholder="사이즈">M</label>
		<br>
		<input name="signdate" placeholder="등록일??" >
		<input name="dough" placeholder="도우" value=" ">
		<input name="topping" placeholder="토핑" value=" ">
	</div>
	<div>
		<input type="file" name="file">
	</div>
	<div>
		<input type="submit">
	</div>
</form>

<form action="/uploadFormSide" method="post" enctype="multipart/form-data" >
	<div>
		<input name="name" placeholder="사이드 이름(토핑)">
		<input name="price" placeholder="사이드 가격(토핑)" value="1000">
		<br>
		<input name="signdate" placeholder="등록일??">
		<input name="category" placeholder="사이드 이넘" value="3">
		<input name="menu"  value="pizza">
	</div>
	<div>
		<input type="file" name="file">
	</div>
	<div>
		<input type="submit">
		<input type="text" value="0" name="x">
		<input type="submit" value="사이드 데이터 삭제" onclick=" x.value='1';">
	</div>
</form>



<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>