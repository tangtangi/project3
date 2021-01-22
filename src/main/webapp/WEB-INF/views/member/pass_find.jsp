<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>비밀번호 찾기</title>
<style>
	
</style>
<script>
	var msg = "${msg}";
	if(msg == "pass_fail"){
		alert("입력하신 정보가 틀립니다.");
	}
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >비밀번호 찾기</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=1>
	<tr>
		<td  width=13.5% rowspan=4></td>
		<td>아이디</td>
		<td><input name="id"></td>
		<td  width=13.5% rowspan=4></td>
	</tr>
	<tr>
		<td >이름</td>
		<td><input name="name"></td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input name="email"></td>
	</tr>
	<tr>
		<td ></td>
		<td><input type="submit" value="비밀번호 찾기"></td>
	</tr>
</table>
</form>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>