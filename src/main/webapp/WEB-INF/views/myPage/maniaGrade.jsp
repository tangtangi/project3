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
.myBlack{
	width: 100%;
	height: 283px;
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
.before:before{
    content: "";
    width: 1px;
    height: 70px;
    background: #aaa;
    display: inline-block;
    position: absolute;
    left: 0%;
    top: -66%;
}
.second_box_head{
    clear: both;
    border-bottom: 2px solid black;
    padding: 10px 0px;
    height: 40px;
    line-height: 2.5;
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
				<a href="/myPage/maniaGrade">매니아 등급</a>  
				
			</div>
		</div>
		<div class="box_head" >
			<div class="box_head2" >
				<a href="/myPage/maniaGrade"><b>매니아 등급</b></a></div>
			<div class="box_head2"><a href="/myPage/myOrderList">주문내역</a></div>
			<div class="box_head2"><a href="/myPage/myCoupon">쿠폰함</a></div>
			<div class="box_head2"><a href="/myPage/questionList">1:1문의</a></div>
			<div ><a href="/myPage/userInfoConfirm">정보수정</a></div>
		</div>
		
		<div class="myBlack" >
			<div style="width: 50%;">
				<div style="width: 80%; margin-left: 100px; text-align: left;">
					<p>'이름'님</p>
					<p>'등급'</p>
					<p style="width: 300px;height: 3px; background: #1391ff;"></p>
					<p>등급별 혜택 보기 ></p>
				</div>
			</div>
			<div style="width: 25%;" class="before">매니아 등급</div>
			<div style="width: 25%;" class="before">매니아 등급</div>
		</div>
		
		<!-- 업그레이드 남은 금액 -->
		<div class="second_box_head" >
			<div class="second_head2" style="float: left;"><b>로얄등급으로 업그레이드 하려면?</b></div>
			<div  style="float: right; font-size: 10px;margin-top: 15px;color: #888;">*최근 3개월간 완료된 주문에 대해서 주문건 수를 기준으로 매월 1일 매니아 등급에 반영됩니다.</div>
		</div>
		<div style="border-bottom: 1px solid lightgrey;">
			<div> 주문금액</div>
			<div> 게이지 바</div>
			<div> 700,000원 남음</div>
			<div> 목표등급</div>
		</div>
		
		
		<!-- 나의 매니아 혜택 -->
		<div class="second_box_head" >
			<div class="second_head2" style="float: left;"><b>나의 매니아 혜택</b></div>
			<div  style="float: right; font-size: 10px;margin-top: 15px;color: #888;"><a><img src="image/myManiaNotice.jpg"></a></div>
		</div>
		<div style="border-bottom: 1px solid lightgrey;">
			<div> 생일 50% 쿠폰 1매(피자 1판 적용)</div>
			<div> 배달 주문 20% 할인쿠폰 1매</div>
			<div> 배달 주문 30% 할인쿠폰 1매</div>
			<div> 방문 포장 35% 할인쿠폰 1매</div>
		</div>
		
		<!-- 버튼 -->
		<div style="display: flex; padding: 40px 0;">
			<div style="width: 50%;"></div>
			<div style="width: 50%;text-align: center;"><a href="/moreList/bbs/qnaForm" class="receiveCoupon">쿠폰 받기</a></div>
			<div style="width: 50%;text-align: end;line-height: 3;">
				<span style="color:#aaa;font-size: 14px;">고마운 사람에게 쿠폰을 보내자!</span>
				<a href="/myPage/myCoupon" style="text-decoration: underline;">내 쿠폰 선물하기</a>
			</div>	
		</div>	
	</div><!-- 중간폭 73% -->
	<div style ="width: 13.5%"></div>
</div>

<div>임의테스트</div>
  

<%@ include file="/WEB-INF/views/include/footer.jsp" %>