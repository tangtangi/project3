<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>아이디 찾기</title>
<style>
	
</style>
<script>
	var msg = "${msg}";
	if(msg == "id_fail"){
		alert("입력하신 정보와 일치하는 아이디가 없습니다.");
	}
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >아이디 찾기</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=1>
	<tr>
		<td  width=13.5% rowspan=4></td>
		<td>이름</td>
		<td><input name="name"></td>
		<td  width=13.5% rowspan=4></td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input name="email"></td>
	</tr>
	<tr>
		<td >휴대폰번호</td>
		<td><input name="phone"></td>
	</tr>
	<tr>
		<td ></td>
		<td><input type="submit" value="아이디 찾기"></td>
	</tr>
</table>
</form>
아이디는 : 

<%@ include file="/WEB-INF/views/include/footer.jsp" %>