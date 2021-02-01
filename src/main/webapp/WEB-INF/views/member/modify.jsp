<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>정보수정</title>
<style>
	.inputCang {
		border:1px solid #c1c1c1;
		width:320px;
		height:80%;
	}
	.info{
		border:0px;
		
	}
	
	.tdtd tr td{
		height: 60px;
		text-align: center;
	}
	.buttonCang{
	    background: #ff143c;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    text-align:center;
	    line-height: 60px;
	    border:0px;
	  	font-size:17px;
        font-weight: bold;
	}
	
	.withdraw{
		font-size:15px;
		color:#888888;
	}
	.withdraw_input{
		font-size:16px;
		color:#888888;
		border:0px;
		background-color:white;
		font-weight: bold;
	}
</style>
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
		<td class="menuname2" width=73% style="text-align: left;">회원수정</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=0 style=" margin-top: 50px;" class="tdtd">
	<tr>
		<td  width=35% rowspan=11></td>
		<td>아이디</td>
		<td><input class="inputCang" name="id" value="${modify.id }" readonly></td>
		<td  width=35% rowspan=11></td>
	</tr>
	<tr>
		<td >비밀번호</td>
		<td><input class="inputCang" name="pass" id="pass1" type="password"></td>
	</tr>
	<tr>
		<td >비밀번호 확인</td>
		<td><input class="inputCang" name="pass2" id="pass2" type="password" onblur="passcheck()"></td>
	</tr>
	<tr>
		<td >이름</td>
		<td><input class="inputCang" name="name" value="${modify.name }" readonly></td>
	</tr>
	<tr>
		<td >연락처</td>
		<td><input class="inputCang" name="phone" value="${modify.phone }"></td>
	</tr>
	<tr>
		<td >주소</td>
		<td><input class="inputCang" name="address" value="${modify.address }"></td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input class="inputCang" name="email" value="${modify.email }"></td>
	</tr>
	<tr>
		<td >성별</td>
		<td><input class="inputCang" name="gender" value="${modify.gender }"></td>
	</tr>
	<tr>
		<td >생일</td>
		<td><input class="inputCang" name="birth" value="${modify.birth }"></td>
	</tr>
	<tr>
		<td Style="height:100px;"></td>
		<td><input class="buttonCang" type="submit" value="수정하기"></td>
	</tr>
	<tr>
		<td colspan=2 class="withdraw">도미노피자를 더 이상 이용하지 않는다면 --> <input class="withdraw_input" type="submit" value="회원탈퇴 바로가기" onclick="if(confirm('정말로 탈퇴 하시겠습니까?'))"></td>
	</tr>
</table>
</form>
<form method="post" action="withdraw" >
<table>
	
</table>
</form>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>