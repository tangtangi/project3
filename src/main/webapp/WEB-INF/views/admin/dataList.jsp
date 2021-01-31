<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>


<title>Domino's Menu!!</title>    
<style>
	div>input{
		 width: 100px; 
	}
	div{
/* 		border-bottom: 1px solid black; */
		margin: 0 0 5px 0;
	}
	form{
	
	    width: 75%;
	    text-align: center;
	    /* align-items: center; */
	    display: inline;
    }
    .headDiv{
	    display: inline-block;
	    width: 75%;
	    text-align: center;
    }
</style>
<!-- --------------------------------------------------------------------------------------------------------- -->
<div style="text-align: center;">
	<div class="headDiv">
		<a href="dataList">데이터 베이스 리스트 페이지</a>&nbsp;&nbsp;
		<a href="insert">인서트페이지로 이동</a>&nbsp;&nbsp;
		<a></a>
	</div>
</div>
<div style="text-align: center;">
	<div class="headDiv" style="border-bottom: 2px solid black;">
		&nbsp;&nbsp;
		<input name="name" placeholder="피자이름" value="이름">
		<input name="price" placeholder="가격"  value="가격">
		<label><input type="radio" name="size" value="L" placeholder="사이즈" checked>L</label>
		<label><input type="radio" name="size" value="M" placeholder="사이즈">M</label>
		<input name="signdate" placeholder="등록일??"  value="등록일">
		<input name="dough" placeholder="도우"  value="도우">
		<input name="topping" placeholder="토핑"  value="토핑">
		<input name="image" placeholder="이미지"  value="이미지">
		<input type="file" name="file">
		<input type="submit" value="수정하기">
	</div>
</div>
	
<!-- <form id='registerForm' role="form"  action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame"> -->
<c:forEach items="${pizza }" var="pizza" varStatus="stat">
<!-- onsubmit="return confirm('확실?')" -->
	<form  id='form1' name="form(${stat.index })" action="dataList" method="post" enctype="multipart/form-data" target="zeroFrame">
		<div>
			${stat.index }
			<input class="a" style="" name="menu" type="hidden" value="pizza" >
			<input class="a" style="" name="uid" placeholder="uid" value="${pizza.uid }">
			<input class="a" style="" name="name" placeholder="피자이름" value="${pizza.name }">
			<input class="a" style="" name="size_L" placeholder="size_L"  value="${pizza.size_L }">
			<input class="a" style="" name="price_L" placeholder="price_L"  value="${pizza.price_L }">
			<input class="a" style="" name="size_M" placeholder="size_M"  value="${pizza.size_M }">
			<input class="a" style="" name="price_M" placeholder="price_M"  value="${pizza.price_M }">
			<input class="a" style="" name="info" placeholder="한줄정보"  value="${pizza.info }">
			<input class="a" style="" name="kind" placeholder="kind"  value=${pizza.kind }>
			<input class="a" style="" name="signdate" placeholder="등록일??"  value="${pizza.signdate }">
			<input class="a" style="" name="dough" placeholder="도우"  value="${pizza.dough }" type="hidden">
			<input class="a" style="" name="topping" placeholder="토핑"  value="${pizza.topping }" type="hidden">
			<input class="a" style="" name="image" placeholder="이미지"  value="${pizza.image_o }">
			<input class="a" style="" type="file" name="file">
			<input class="a" style="" type="submit" value="수정하기">
			<input class="a" style="" type="submit"  formaction="dataDeleteList" value="삭제하기">
		</div>
	</form>
</c:forEach>
<br>	

<br>
<c:forEach items="${side }" var="side" varStatus="stat">
	<form action="dataList" method="post" enctype="multipart/form-data" >
		<div>
			${stat.index }
			<input class="a" style="" name="menu" type="hidden" value="side">
			<input class="a" style="" name="uid" placeholder="uid" value="${side.uid }">
			<input class="a" style="" name="name" placeholder="사이드 이름(토핑)" value="${side.name }">
			<input class="a" style="" name="price" placeholder="사이드 가격(토핑)" value="${side.price }">
			<input class="a" style="" name="signdate" placeholder="등록일??" value="${side.signdate }">
			<input class="a" style="" name="category" placeholder="사이드 이넘" value="${side.category }">
			<input class="a" style="" name="image_o"  value="${side.image_o }">
			<input class="a" style="" type="file" name="file" >
			<input class="a" style="" type="submit" value="수정하기">
			
			<input class="a" style="" type="text" value="0" name="x">
			<!-- <input class="a" type="submit" value="사이드 데이터 삭제" onclick=" x.value='1';"> -->
		</div>
	</form>
</c:forEach>



<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>