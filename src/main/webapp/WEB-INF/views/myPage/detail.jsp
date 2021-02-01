<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>피자 주문 상세페이지</title>
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
	    color:#8c8888;
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
	.orderBox{
		border-bottom:2px solid black;
/* 		font-size:16px; */
		height:120px;
		
		
	}
	info a{text-decoration: none; color:#fff }
	
</style>
<script>

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
				<a href="/myPage/myOrderList">주문내역</a>  
				
			</div>
		</div>
		<div class="box_head" >
			<div class="box_head2" >
				<a href="/myPage/maniaGrade">매니아 등급</a></div>
			<div class="box_head2"><a href="/myPage/myOrderList"><b>주문내역</b></a></div>
			<div class="box_head2"><a href="/myPage/myCoupon">쿠폰함</a></div>
			<div class="box_head2"><a href="/myPage/questionList">1:1문의</a></div>
			<div ><a href="/myPage/userInfoConfirm">정보수정</a></div>
		</div>
		<div class="addressBox" id="tab0111" >
			<div style="padding: 0 30px;"><span>주문내역</span></div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;padding-right: 35px;color:#8c8888;">
				<a href="/myPage/myOrderList"><b>피자 주문내역</b></a></div>
			<div style="padding: 0 35px;color:#8c8888;"><a href="/myPage/myOrderList_gift">상품권 주문내역</a></div>
		</div>	
			<div class="myBlack" >
			<div style="width: 50%;">
				<div style="width: 80%; margin-left: 100px; text-align: left;">
					<p style="font-size: 35px;border-bottom: 3px solid #1391ff;color:white;">'${name }'님이 주문하신 내역입니다.</p>
					<p>주문을 취소하시려면 해당 매장으로 전화하셔야 합니다.</p>
				</div>
			</div>
		</div>
	</div>
	<div style ="width: 13.5%"></div>
</div>

<table width=100% align= center>
	<tr>
		<td width=13.5% rowspan=2></td>
		<td width=73% align= center>
			<table width=100% align= center>
				<c:forEach var="order" items="${order }">
					<tr>
						<td width=100% >
							<table border=0 width=100% class="orderBox">
								<tr>
									<td width= 15% align= center>피자</td>
									<td width= 30% align= center>${order.name}</td>
									<td width= 55% align= left>주문번호 ${order.order_uid }</td>
								</tr>
								<tr>
									<td align= center >${order.category }</td>
									<td align= center >수량 ${order.count }개</td>
									<td >가격 ${order.price }</td>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
			</table>
		</td>
		<td  width=13.5% rowspan=2></td>
	</tr>
	<tr><td class="info">* e 쿠폰 번호 복사해서 오른쪽의 e 쿠폰 페이지의 입력창에 기입해주세요. --> <a href="/menu/coupon" ><b>e 쿠폰 입력하러 가기</b></a></td></tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>