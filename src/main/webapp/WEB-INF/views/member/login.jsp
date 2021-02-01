<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>로그인</title>
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
	.search{
		font-size:17px;
        font-weight: bold;
        color:#888888;
	}
	search a {color:#888888; text-decoration: none;}
</style>
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
		<td class="menuname2" width=73% style="text-align: left;">로그인</td>
		<td width=13.5% ></td>
	</tr>
</table>
<form method="post" >
<table width=100% border=0  style=" margin-top: 50px;" class="tdtd">
	<tr>
		<td  width=35% rowspan=4></td>
		<td>아이디</td>
		<td><input class="inputCang" name="id"></td>
		<td  width=35% rowspan=4></td>
	</tr>
	<tr>
		<td >비밀번호</td>
		<td><input class="inputCang" name="pass" id="pass" type="password"></td>
	</tr>
	<tr>
		<td Style="height:130px;"></td>
		<td><input class="buttonCang" type="submit" value="로그인"></td>
	</tr>
	<tr>
		<td></td>
		<td>
			<table width=100%>
				<tr>
					<td width=50%><a href="/member/id_find" class="search">아이디 찾기</a></td>
					<td width=50%><a href="/member/pass_find"  class="search">비밀번호 찾기</a></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>