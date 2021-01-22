<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>로그인</title>

<script>
	var msg = "${msg}";
	if(msg == "find_id"){
		alert("찾으시는 아이디는 ${find_id} 입니다.");
	}else if(msg == "find_pass"){
		alert("찾으시는 비밀번호는 ${find_pass} 입니다.");
	}else if(msg == "fail"){
		alert("없는 아이디거나 잘못된 비밀번호 입니다.");
	}
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >로그인</td>
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
		<td >비밀번호</td>
		<td><input name="pass" id="pass" type="password"></td>
	</tr>
	<tr>
		<td ></td>
		<td><input type="submit" value="로그인"></td>
	</tr>
	<tr>
		<td><a href="/member/id_find">아이디 찾기</a></td>
		<td><a href="/member/pass_find">비밀번호 찾기</a></td>
	</tr>
</table>
</form>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>