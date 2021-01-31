<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    

<!-- --------------------------------------------------------------------------------------------------------- -->

<div style="text-align: center;">
	<div class="headDiv">
		<a href="dataList">데이터 베이스 리스트 페이지로 이동.</a>&nbsp;&nbsp;
		<a href="insert">인서트페이지로 이동</a>&nbsp;&nbsp;
		<a></a>
	</div>
</div>
<div style="text-align: center;">피자 입력 : 
	<!-- <form id='registerForm' role="form"  action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame"> -->
	<form id='form1' action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame">
		<div>
			<input name="name" placeholder="피자이름">
			<input name="price" placeholder="가격">
			<label><input type="radio" name="size" value="L" placeholder="사이즈" checked>L</label>
			<label><input type="radio" name="size" value="M" placeholder="사이즈">M</label>
			<input name="signdate" placeholder="등록일??" >
			<input name="dough" placeholder="도우" value=" ">
			<input name="topping" placeholder="토핑" value=" ">
			
			<input type="file" name="file">
			<input type="submit">
		</div>
</form>
</div>

<div style="text-align: center;">사이드메뉴 입력 :
	<form action="/uploadFormSide" method="post" enctype="multipart/form-data" >
		<div>
			<input name="name" placeholder="사이드 이름(토핑)">
			<input name="price" placeholder="사이드 가격(토핑)" value="1000">
			<input name="signdate" placeholder="등록일??">
			<input name="category" placeholder="사이드 이넘" value="3">
			<input name="menu"  value="pizza">

			<input type="file" name="file">

			<input type="submit">
			<input type="text" value="0" name="x">
			<!-- <input type="submit" value="사이드 데이터 전체? 삭제" onclick=" x.value='1';"> -->
		</div>
	</form>
</div>


<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>