<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>아이디 찾기</title>
<style>
		.inputCang {
		border:1px solid #c1c1c1;
		width:320px;
		height:80%;
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
		<td class="menuname2" width=73% style="text-align: left;">아이디 찾기</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=0 style=" margin-top: 50px;" class="tdtd">
	<tr>
		<td  width=35% rowspan=4></td>
		<td>이름</td>
		<td><input class="inputCang"  name="name"></td>
		<td  width=35% rowspan=4></td>
	</tr>
	<tr>
		<td >이메일</td>
		<td><input  class="inputCang" name="email"></td>
	</tr>
	<tr>
		<td >휴대폰번호</td>
		<td><input class="inputCang" name="phone"></td>
	</tr>
	<tr>
		<td Style="height:130px;"></td>
		<td><input class="buttonCang" type="submit" value="아이디 찾기"></td>
	</tr>
</table>
</form>


<%@ include file="/WEB-INF/views/include/footer.jsp" %>