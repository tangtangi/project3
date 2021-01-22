<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>정보수정</title>
<script>
	function passcheck(){
		if(pass1.value != pass2.value){
			alert("비밀번호가 일치하지 않습니다.");
		}
	}
</script>
<table 	width=100% height=115px border=0>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname2" width=73% >회원수정</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=1>
	<tr>
		<td  width=13.5% rowspan=10></td>
		<td>아이디</td>
		<td><input name="id" value="${modify.id }" readonly></td>
		<td  width=13.5% rowspan=10></td>
	</tr>
	<tr>
		<td >비밀번호</td>
		<td><input name="pass" id="pass1" type="password"></td>
	</tr>
	<tr>
		<td >비밀번호 확인</td>
		<td><input name="pass2" id="pass2" type="password" onblur="passcheck()"></td>
	</tr>
	<tr>
		<td >이름</td>
		<td><input name="name" value="${modify.name }" readonly></td>
	</tr>
	<tr>
		<td >연락처</td>
		<td><input name="phone" value="${modify.phone }"></td>
	</tr>
	<tr>
		<td >주소</td>
		<td><input name="address" value="${modify.address }"></td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input name="email" value="${modify.email }"></td>
	</tr>
	<tr>
		<td >성별</td>
		<td><input name="gender" value="${modify.gender }"></td>
	</tr>
	<tr>
		<td >생일</td>
		<td><input name="birth" value="${modify.birth }"></td>
	</tr>
	<tr>
		<td ></td>
		<td><input type="submit" value="수정하기"></td>
	</tr>
</table>
</form>
<form method="post" action="withdraw" >
<table>
	<tr>
		<td>도미노피자를 더 이상 이용하지 않는다면 <input type="submit" value="회원탈퇴 바로가기" onclick="if(confirm('정말로 탈퇴 하시겠습니까?'))"></td>
	</tr>
</table>
</form>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>