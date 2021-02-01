<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>1:1 문의글</title>
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
	.a_style a { text-decoration: none; color: black; }
	
</style>



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
				<a href="/myPage/questionList">1:1문의</a>  
				
			</div>
		</div>
		<div class="box_head" >
			<div class="box_head2" >
				<a href="/myPage/maniaGrade">매니아 등급</a></div>
			<div class="box_head2"><a href="/myPage/myOrderList">주문내역</a></div>
			<div class="box_head2"><a href="/myPage/myCoupon">쿠폰함</a></div>
			<div class="box_head2"><a href="/myPage/questionList"><b>1:1문의</b></a></div>
			<div ><a href="/myPage/userInfoConfirm">정보수정</a></div>
		</div>
		<div class="myBlack" >
			<div style="width: 50%;">
				<div style="width: 80%; margin-left: 100px; text-align: left;">
					<p style="font-size: 35px;border-bottom: 3px solid #1391ff;color:white;">'${member.name }'님이 주문하신 내역입니다.</p>
					<p>주문을 취소하시려면 해당 매장으로 전화하셔야 합니다.</p>
				</div>
			</div>
		</div>
	</div><!-- 중간폭 73% -->
	<div style ="width: 13.5%"></div>
</div>
<table width=100% align=center border=0>
	<tr>
		<td width=13.5%></td>
		<td width=73% align=center>
			<table width=80% border=0>
				<tr>
					<td width=5%>번호</td>
					<td width=25%>제목</td>
					<td width=20%>등록일</td>
					<td width=20%>처리상태</td>
				</tr>
				<c:forEach var="question" items="${question }">
					<tr>
						<td width=5%>번호</td>
						<td width=25% class="a_style"><a href="/myPage/questionView?uid=${question.uid }">${question.title }</a></td>
						<td width=20%>${question.signdate }</td>
						<td width=20%></td>
					</tr>
				</c:forEach>
				
			</table>
		</td>
		<td width=13.5%></td>
	</tr>
	
	<tr>
		<td width=13.5%></td>
		<td align=center width=73% height=150px><a href="question" class="receiveCoupon">문의하기</a></td>
		<td width=13.5%></td>
	</tr>
</table>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>