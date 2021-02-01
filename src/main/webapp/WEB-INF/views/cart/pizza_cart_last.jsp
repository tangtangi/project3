<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Your Cart!!</title>
<style>
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	
	.maniaUl{
	    display: block;
	    text-align: center;
	    margin: 50px 0;
    }
	.maniaUl>ul{
    
    }
	.maniaUl>ul>li{
	    display: inline-block;
	    list-style: none;
	    width: 32.3%;
	    text-align: center;
	    padding: 3px 0;
	}
/* 	.maniaUl>ul>li>a{ */
	.a{
	    display: block;
	    width: 100%;
	    font-size: 15px;
	    height: 48px;
	    text-align: center;
	    line-height: 48px;
	    background: #f5f5f5;
	    color: #888888;
	    position: relative;
	    cursor: pointer;
	}
/* 	.active{ */
	/* .a:active{
	    display: block;
	    width: 100%;
	    font-size: 15px;
	    height: 48px;
	    text-align: center;
	    line-height: 48px;
	    cursor: pointer;
	    position: relative;
	    background: black;
	    color: white;
	    
	} */
	.active{
	    display: block;
	    width: 100%;
	    font-size: 15px;
	    height: 48px;
	    text-align: center;
	    line-height: 48px;
	    cursor: pointer;
	    position: relative;
	    background: black;
	    color: white;
	    transition : all .6s;
	}
	.maniaUl>ul>li>a:after{
		content: ">";
	    position: absolute;
	    right: 10px;
		
	}
	div a{
		color: black;
	}
	.goToGift{
	    background: black;
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    color: white;
	    align-items: ;
	    line-height: 60px;
	}
	li a{
		z-index: 0;/* 0이상하면 헤더 가리고, -1이하로 하면 스크립트동작이 안돼(li보다 아래 숨어서) */
	}
	.box_head{
		clear: both;
	    display: flex;
	    /* border-bottom: 2px solid black; */
	    padding: 10px 0px;
	}
	
	.maniaUl{
	    display: block;
	    text-align: center;
	    margin: 50px 0;
    }
	.maniaUl>ul{
    
    }
	.maniaUl>ul>li{
	    display: inline-block;
	    list-style: none;
	    width: 32.3%;
	    text-align: center;
	    padding: 3px 0;
	}
	.active{
	    font-weight: bold;
	} 
	div a{
		color: black;
	}
	.goToGift{
	    width: 250px;
	    display: inline-block;
	    height: 60px;
	    align-items: ;
	    line-height: 60px;
	}
	
	.x{
	
		display: inline-block;
		width: 100px;
		height: 20px;
		border: 1px solid lightgray;
	}
		.form_box{
			/* border-top: 1px solid black; */
		}
		.form_mini_box{
			display: flex;
			min-height: 100px;
		}
		.form_mini_box div{
			margin: 10px 0;
		}
		.form_left{
			padding : 0 3%; 
			align-self: center;
			min-width: 80%;
		}
		.form_left2{
			padding-left : 2%; 
			align-self: center;
		}
		.form_right{
	/* 		padding : 30px 0; */
	   	 align-self: center;
		}
		.form_input{
		    border: 1px solid lightgray;
		    height: 30px;
		    padding: 0 10px;
		}
		.form_input:hover{
		    border: 1px solid black;
	    	transition: all 0.3s;
		}
	.addressBox{
		/* display: flex; */
		font-size:18px;
/* 	   	height: 70px; */
	    line-height: 70px;
	    background: #f5f5f5;
 	   	border-top: 2px solid black;
	   
	}
	.aModi{
	    font-size: 16px;
	    color: #888;
	    display: inline-block;
	    border: 1px solid #888;
		border-radius: 50% 50% 50% 50% /100% 100% 100% 100%;
	    width: 48px;
	    height: 30px;
	    text-align: center;
	    line-height: 30px;
	}
	.littleHeader{
		display: flex;
	    height: 50px;
	    line-height: 50px;
	    justify-content: center;
	    border-bottom: 1px solid lightgray;
	    width: 100%;
	}
	.littleContent{
		display: flex;
	    min-height: 50px;
	  /*   line-height: 50px; */
	/*     justify-content: center; */
	    border-bottom: 1px solid lightgray;
	    width: 100%;
	}
	.little{
		text-align: center;
		line-height: 3;
	    display: flex;
	    /* justify-content: center; */
	}
	.little p{
		/* display: inline-block; */
		line-height: 1.5;
		
	}
	 .content{
		margin: 15px 10px;
	}
	
	.discount{
	    width: 350px;
	    height: 57px;
	    color: white;
	    background-color: black;
	    font-size: 18px;
	    text-align: center;
	}
	.paybox{
		border: 1px solid #c1c1c1;
	    width: 130px;
	    height: 50px;
	    text-align: center;
	}
	.money{
		text-align: center;
	    font-size: 18px;
	}
	.money2{
		
	    text-align: center;
		font-size: 34px;
		font-weight: bold;
	}
	.money3{
		
	    text-align: center;
	    font-size: 55px;
	}
	.recipient td{
		padding: 10px;
	}
	.recipient input{
		padding: 10px;
	}
	.recipient p{
		color: red;
	}
	
	
	/* 결제 수단 */
	.payActive{
	    background: black;
	    color: white; 
	    border: 1px solid;
	}
	.payActive a{
		color: white;
	}
</style>



<div style="display: flex;    margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;padding-bottom: 20px;">
			<div  style="float:left">
				<h1 style="font-family: ">결제하기</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="pizza_cart">장바구니</a> >
				<a href="pizza_cart_last">결제하기</a>  
				
			</div>
		</div>
		<!-- 배달주문일 때 -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>수령인 정보</span></div>
<!-- 			<div style="padding: 0 30px;"><span>포장주문</span></div> -->
		</div>
		<!-- 포장주문일 때  -->
		<div class="addressBox" id="tab0222" style="display: none;">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartCar.jpg">도미노 드라이빙 픽업 서비스 이용</span>
					<a href="#"><span style="float: right;color: #238ece; ">이용안함 ></span></a>
			</div>
		</div>
		
		<!-- 수령인 정보 -->
		<form method="post" id="tab01">
			<div class="form_box" style="clear: both;">
				<div class="form_mini_box">
					<div class="form_left"><span style="font-size: 20px;">${addressVO.address }</span><p>${addressVO.store_name }</p> <span>${addressVO.phone }</span></div>
					<div class="form_right"><a class="aModi" href="cart2">수정</a></div>
				</div>
			</div>

			<div class="form_box" style="clear: both;border-top: 1px solid lightgrey;">
				<div class="form_mini_box">
					<table style="margin-left: 80px;margin-top: 55px;margin-bottom:55px;" class="recipient">
					<tr>
						<td></td>
						<td><label><input type="checkbox" value="" id="checked" onclick="checkBoxClick()" checked>주문자와 동일</label></td>
					</tr>
					<tr>
						<td>이름</td>
						<td ><input value="${member.name}" id="name1"></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td ><input value="${member.phone}" id="phone"></td>
					</tr>
					<tr>
						<td>요청사항</td>
						<td ><input value="맛있게 해주세요"></td>
					</tr>
					<tr>
						<td>비대면 안전배달 (준비중)</td>
						<td>
							<label><input type="checkbox" value="">미리결제 이용 필수
								
							</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<p>*배달 시 고객님의 문 앞에 피자를 놓은 후 고객님께 확인 연락(초인종 또는 전화) 드리는 서비스입니다.</p>
							<p>*주류상품이 포함된 경우 수령자의 신분증 확인을 위해 비대면 안전배달 서비스가 제한됩니다.</p>
						</td>
					</tr>
				</table>
				</div>
			</div>
			
		<!--  -------------------------------- -------------------------------- -->		
		<!-- 주문내역 -->
			<div class="addressBox" id="tab0111" style="">
				<div style="padding: 0 30px; "><span>주문내역</span></div>
	<!-- <div style="padding: 0 30px;"><span>포장주문</span></div> -->
			</div>
			<c:set  var="sum2" value="${0 }" />
			<c:forEach var="list" items="${list }" >
					<div class="littleContent">
						<div class="little" style="width: 60%; ">
							<div class="content">
								<p>${list.name } * ${list.count } /  
								<c:if test="${list.category == null }"><p style="color: lightgray; font-size: 12px;"> ${list.dough_name}/${list.size }</c:if>
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price + list.dough_price}" />원 </p>
							</div>
						</div>
						<div class="little" style="width: 40%;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.count * list.price + list.count * list.dough_price}" />원</div>
						<c:set  var="sum2 " value="${sum2 + (list.count * list.price) + (list.count * list.dough_price)}"/>
					</div>
			</c:forEach>
			
			
			<c:set  var="sum"/>
			<c:forEach var="list" items="${list }">
				<c:set var="sum"  value="${sum + list.count * list.price + list.count * list.dough_price}"/>
			</c:forEach>
			
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox" id="tab0111" style="border-top:1px solid black; ">
			<div style="padding: 0 30px;"><span>할인 적용</span></div>
		</div>
		<div class="form_box" style="clear: both;">
			<table style="margin-left: 80px;margin-top: 55px;margin-bottom:55px;">
				<tr>
					<td class="discount" style="background-color: white;color: gray;border: 1px solid gray">도미노콘 15% 할인</td>
				</tr>
			</table>
		</div>
		<!--  -------------------------------- -------------------------------- -->
<!--	<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>도착 예정 시간</span></div>
		</div>
		<div class="form_box" style="clear: both;text-align: center;">
			<div class="form_mini_box" style="display: inline-block;">
				<div style="border-bottom: 1px solid lightgray;">
					<a href="#">바로주문</a>
					<a href="#">오늘예약</a>
					<a href="#">내일예약</a>
				</div>
				<div>
					<span>지금 주문하시면, 11시 39분 배달될 예정입니다.</span>
					<span>2021년 01월 09일</span> 
					<select>
						<c:forEach begin="11" end="22" var="hour">
							<option>${hour }시</option>
						</c:forEach>
					</select>
					<select>
						<c:forEach begin="00" end="55" step="05" var="minu">
							<option>${minu }분</option>
						</c:forEach>
					</select>
				</div>
				<div>*매장 상황에 따라 배달시간이 상이할 수 있습니다.</div>
			</div>
		</div>
		-->
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox" id="tab0111" style="border-top:1px solid black;" >
			<div style="padding: 0 30px;"><span>결제수단 선택</span></div>
		</div>
		<div class="form_box" style="clear: both;" >
			<table style="margin-left: 80px;margin-top: 55px;margin-bottom: 55px;">
				<tr>
					<td class="paybox payActive" id="kakaoTD"><a href="javascript:void(0)" onclick="payMethod()" name="payMethod"><label for="kakao">카카오페이 결제</label></a></td>
					<td width=10px>
						<input type="radio" id="kakao" name="pay" checked style="display: none;">
						<input type="radio" id="withOutPayBook" name="pay" style="display: none;">
					</td>
<!-- 					<td class="paybox" id="payBookTD"><a href="javascript:void(0)" onclick="payMethod()" name="payMethod"><label for="withOutPayBook">무통장 결제</label></a></td> -->
				</tr>
			</table>
			
		</div>
		<!--  -------------------------------- -------------------------------- -->
		
		<div class="addressBox" id="tab0111" style="border-top:1px solid black;">
			<div style="padding: 0 30px;"><span>최종 결제 금액</span></div>
		</div>
		<div class="form_box" style="clear: both;">
			<table style="margin-left: 30px; margin-top: 20px;margin-bottom: 20px;" width=100%>
				<tr>
					<td align=center  width=75% style="height: 123px;vertical-align: bottom;">
						<table align=center width=50%>
							<c:set var="discount" value="${sum * 0}"/>
							<c:set var="total_sum" value="${sum - discount}"/>
							<tr>
								<td class="money">총 상품 금액</td>
								<td rowspan=2 class="money3">-</td>
								<td class="money">총 할인 금액</td>
								<td rowspan=2 class="money3">=</td>
								<td class="money">총 결제 금액</td>
							</tr>
							<tr>
								<td class="money2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원</td>
								<td class="money2" style="color:red;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${discount}" />원</td>
								<td class="money2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${total_sum}" />원</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4;">
				<div style="width: 15px;"> </div>
				<a href="javascript:void(0)" onclick="pay()" class="goToGift" style="color: white;background: #ff143c; text-align: center;">결제하기</a>
			</div>	
<!-- 		</form> -->
	</div><!-- 중간폭 -->
	<div style ="width: 13.5%"></div>
</div>


<script>
/* 결제하기 버튼 누르면 */
 function pay(){
	if(kakao.checked){
		location.href="kakao?total_price=${sum }";
	}else if(withOutPayBook){
		alert('준비중입니다. 카카오페이를 이용해주세요');
	}
}
// 왜 한템포 늦지....
function payMethod(){
	setTimeout("css()", 1);
}
function css(){
	if(kakao.checked){
		kakaoTD.className = "paybox payActive";
		payBookTD.className = "paybox";
	}else {
		kakaoTD.className = "paybox";
		payBookTD.className = "paybox payActive";
	}
}
 
/*  $("a[name=payMethod]").click(function(){
	if($("#kakao").prop("checked")){
		console.log('aaa');
	}else{
		console.log('bbb');
	}
 }); */
var b = $('.box_head a');		
	b.click(function(){
	b.removeClass("active");
	$(this).addClass("active");
});
 	function show_layer(tabNo){
	 
			
	document.all.tab01.style.display="none";
	document.all.tab011.style.display="none";
	document.all.tab0111.style.display="none";
	document.all.tab02.style.display="none";
	document.all.tab021.style.display="none";
	document.all.tab0222.style.display="none";

	 switch(tabNo)
	 {
	  case '1':
	  document.all.tab01.style.display=""; 
	  document.all.tab011.style.display=""; 
	  document.all.tab0111.style.display=""; 
	  break;
	  case '2':
	  document.all.tab02.style.display="";
	  document.all.tab021.style.display="";
	  document.all.tab0222.style.display="";
	  break;
	 } 
	
} 
 	function checkBoxClick(){
		if(checked.checked){
			name1.value="${member.name}";
			phone.value="${member.phone}";
		}else{
			name1.value="";
			phone.value="";
			
		}
 	}
 	
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>