<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>문의글 상세페이지</title>
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
					<p style="font-size: 35px;border-bottom: 3px solid #1391ff;color:white;">'${name }'님이 주문하신 내역입니다.</p>
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
		<td width=73% align=center height=700px>
			<table width=50% align=center border=0 height=100% style="text-align:center;">
				<tr>
					<td colspan=2 style="color:red; font-size:15px;"> 주문 취소 / 변경과 같은 긴급한 요청은 매장으로 연락 부탁드립니다.</td>
				</tr>
				<tr >
					<td width=30% height=65px>아이디</td>
					<td width=70% style="color:#888888;">${member.id }</td>
				</tr>
				<tr>
					<td width=30% height=65px>이름</td>
					<td width=70% style="color:#888888;">${member.name }</td>
				</tr>
				<tr>
					<td width=30% height=65px>제목</td>
					<td width=70%><input value="${question.title }" class="Cang" readonly></td>
				</tr>
				<tr>
					<td width=30% height=200px>문의내용</td>
					<td width=70%><input value="${question.content }" type="text" class="Cang" readonly></td>
				</tr>
				<tr>
					<td width=30% height=200px>답변</td>
					<td width=70%><input value="${question.answer }" type="text" class="Cang" readonly></td> 
				</tr>
				<tr>
					<td colspan=2 style="color:#888888; font-size:15px;height:100px;">등록하신 내용 및 답변은 회원정보상의 이메일로도 발송이 됩니다.<br>상담원과 통화를 원하시면 아래 번호로 전화주시기 바랍니다.<br>고객만족 센터 : <span style="color:#3193d3;">080-860-3082</span></td>
				</tr>
				<tr>
					<td width=50% align=center colspan=2 align=center>
						<table width=100% border=0 align=right>
							<tr>
								<td  width=50% > <a href="/myPage/questionList" class="receiveCoupon">목록으로</a></td>
								<td width=50% > <a href="question_delete?uid=${question.uid }" class="receiveCoupon">삭제하기</a></td>
							</tr>
						</table>
					 </td>
					
				</tr>
			</table>
		</td>
		<td width=13.5%></td>
	</tr>
</table>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>