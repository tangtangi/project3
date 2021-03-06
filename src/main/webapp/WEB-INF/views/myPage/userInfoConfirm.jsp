<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>My Page!!</title>
<style>
	div a{
		color: black;
	}
	.addressBox{
		font-size:18px;
	    height: 70px;
	    line-height: 70px;
	    background: #f5f5f5;
	    border-top: 2px solid black;
	}
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	.box_head2{
	/* 	padding: 0 10px; 
	 	border-right: 1px solid lightgray;    
		padding-right: 10px; */
	}
	.box_head2:after{
		content:"";
	    width: 1px;
	    height: 16px;
	    background: #ddd;
	    display: inline-block;
	    margin: 2px 20px;
	    vertical-align: middle;
	}
	.inputCang {
		border:1px solid #c1c1c1;
		width:320px;
		height:80%;
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
	.tdtd tr td{
		height: 60px;
		text-align: center;
	}
</style>
<script>
	var msg = "${msg}";
	if(msg == "pass_no"){
		alert("비밀번호가 일치하지 않습니다.");
	}
	
</script>
<div style="display: flex;margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;padding-bottom: 20px;">
			<div  style="float:left">
				<h1 style="font-family: ">나의 정보</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/myPage/maniaGrade">나의 정보</a>>  
				<a href="/myPage/userInfoConfirm">정보수정</a>  
				
			</div>
		</div>
		<div class="box_head" >
			<div class="box_head2" >
				<a href="/myPage/maniaGrade">매니아 등급</a></div>
			<div class="box_head2"><a href="/myPage/myOrderList">주문내역</a></div>
			<div class="box_head2"><a href="/myPage/myCoupon">쿠폰함</a></div>
			<div class="box_head2"><a href="/myPage/questionList">1:1문의</a></div>
			<div ><a href="/myPage/userInfoConfirm"><b>정보수정</b></a></div>
		</div>
		
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>정보수정</span></div>
		</div>
		<form method="post">
		<table border=0 width=100% style=" margin-top: 50px;" class="tdtd">
			<tr>
				<td width=35% rowspan=3 ></td>
				<td >아이디</td>
				<td height=60px> <input  class="inputCang" name="id" value="${session_id }" readonly></td>
				<td width=35% rowspan=3></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td ><input  class="inputCang" name="pass" type="password"></td>
			</tr>
			<tr>
				<td Style="height:130px;"></td>
				<td><input class="buttonCang" class="buttonCang" type="submit" value="확인" ></td>
			</tr>
		</table>
		</form>
	</div><!-- 중간폭 73% -->
	
	<div style ="width: 13.5%"></div>
</div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>