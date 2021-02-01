<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>관리자 - 답변 페이지</title>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>
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
	.myBlack{
		width: 100%;
		height: 250px;
		background: #111;
		color: #fff;
		display: flex;
	    justify-content: space-around;
	    align-items: center;
	}
	.myBlack>div{
		text-align: center;
		position: relative;
		color: #aaa;
	}
	.receiveCoupon{
	    background: black;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    text-align:center;
	    line-height: 60px;
	}
	.receiveCoupon a { text-decoration: none; color: white; }
	
	.Cang{
		border:1px solid #dddddd;
		width:95%;
		height:80%;
	}
	.titleName{
		font-size:18px;
		
	}
</style>

<table width=100% align=center border=0>
	<tr>
		<td width=13.5%></td>
		<td width=73% align=center height=700px>
			<table width=50% align=center border=0 height=100% style="text-align:center;">
				<tr><td colspan=2 class="titleName">관리자 - 답변 상세페이지</td></tr>
				<tr >
					<td width=30% height=65px>아이디</td>
					<td width=70% style="color:#888888;">${question.user_id }</td>
				</tr>
				<tr>
					<td width=30% height=65px>제목</td>
					<td width=70%><input value="${question.title }" class="Cang" readonly></td>
				</tr>
				<tr>
					<td width=30% height=200px>문의내용</td>
					<td width=70%><input  value="${question.content }" type="text" class="Cang" readonly></td>
				</tr>
			<form action="answerPost" method="post">
				<input type="hidden" name="uid" value="${question.uid }">
				<tr>
					<td width=30% height=200px>답변</td>
					<td width=70%><input name="answer" type="text" class="Cang" ></td> 
				</tr>
				<tr>
					<td></td>
					<td ><input type="submit" value="답변하기" class="receiveCoupon"></td>
				</tr>
			</form>
			</table>
		</td>
		<td width=13.5%></td>
	</tr>
	<tr><td colspan=3></td></tr>
</table>