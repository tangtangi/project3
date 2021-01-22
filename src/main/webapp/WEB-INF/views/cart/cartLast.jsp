<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Your Cart!!</title>
<style>
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
    height: 70px;
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
	line-height: 5;
    display: flex;
    justify-content: center;
}
.little p{
	/* display: inline-block; */
	line-height: 1.5;
	
}
 .content{
	margin: 15px 10px;
}/*
.content p{
	position: absolute;
	top: 12%;
	left: 12%;
} */
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
				<a href="/member/cart3">장바구니</a>  
				<a href="/member/cartLast">결제하기</a>  
				
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
		
		<!-- 주문내용 -->
		<form method="post" id="tab01">
			<div class="form_box" style="clear: both;">
				<div class="form_mini_box">
					<div class="form_left"><span style="font-size: 20px;">울산 울주군 이영산업기계</span><p>울산점</p> <span>055-342-1234</span></div>
					<div class="form_right"><a class="aModi">수정</a></div>
				</div>
			</div>
		
		<!-- 주문내역 -->
			<div class="addressBox" id="tab0111" style="">
				<div style="padding: 0 30px; float: left;"><span>주문내역</span></div>
				<div style="padding: 0 30px; float: right; color: gray;"><a href="" style="font-size: 14px; color:#888;">전체 삭제</a></div>
	<!-- <div style="padding: 0 30px;"><span>포장주문</span></div> -->
			</div>
			
			<div class="littleHeader">
				<div style="width: 40%; line-height: 3;display: flex;justify-content: center;">상품정보</div>
				<div style="width: 30%; line-height: 3;display: flex;justify-content: center;">추가토핑</div>
				<div style="width: 10%; line-height: 3;display: flex;justify-content: center;">수량</div>
				<div style="width: 10%; line-height: 3;display: flex;justify-content: center;">금액</div>
				<div style="width: 10%; line-height: 3;display: flex;justify-content: center;"></div>
			</div>
			<c:forEach begin="0" end="2">
				<div class="littleContent">
					<div class="little" style="width: 40%; height: 90px;">
						<div><img alt="사진" src="/image/cartImg.jpg" width="90px" height="90px"></div>
						<div class="content">
							<p>스타셰프 시그니처</p>
							<p style="color: lightgray; font-size: 12px;">슈퍼시드 함유 도우/L</p>
							<p>38,900원</p>
						</div>
					</div>
					<div class="little" style="width: 30%;"></div>
					<div class="little" style="width: 10%;">수량</div>
					<div class="little" style="width: 10%;">38,900원</div>
					<div class="little" style="width: 10%;">x</div>
				</div>
			</c:forEach>
				
				<div class="littleContent" style="border-bottom: 2px solid black;    padding: 15px 0;">
					<div class="little" style="width: 30%;"></div>
					<div class="little" style="width: 30%;"></div>
					<div class="little" style="width: 10%;"></div>
					<div style="width: 20%; font-size: 30px; color:black;"><span style="font-size: 20px;margin: 0 0 0 30px;">총 금액</span> <%-- ${aa} --%>38,900원</div>
					<div class="little" style="width: 10%;"></div>
				</div>
				
		<!--  -------------------------------- -------------------------------- -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>할인 적용</span></div>
			
		</div>
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<div>* 가장 높은 할인율의 혜택으로 자동 적용하였습니다.</div>
				<ul>
					<li>[vip쿠폰] 배달 피자 30% 할인</li>
					<li>온라인 프로모션 선택</li>
					<li>통신사 및 카드사 제휴 프로모션 선택</li>
					<li>상품권 및 쿠폰번호 입력</li>
				</ul>
			</div>
		</div>
		<!--  -------------------------------- -------------------------------- -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>도착 예정 시간</span></div>
		</div>
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<div>
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
		
		<!--  -------------------------------- -------------------------------- -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>결제수단 선택</span></div>
		</div>
		
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<label><input type="radio" name="payMethod">도미노페이 / 준비중</label> 
				<label><input type="radio" name="payMethod">다른결제수단 / 준비중 </label>
			</div>
		</div>
		<!--  -------------------------------- -------------------------------- -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>최종 결제 금액</span></div>
		</div>
		
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<div><p>총 상품 금액</p><span>38,900원</span></div>
				<div>-</div>
				<div><p>총 할인 금액</p><span>11,670원</span></div>
				<div>=</div>
				<div><p>총 결제 금액</p><span>27,230원</span></div>
			</div>
		</div>
		
		
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4;">
				<div style="width: 15px;"> </div>
				<a href="#" class="goToGift" style="color: white;background: #ff143c; text-align: center;">결제하기</a>
			</div>	
<!-- 		</form> -->
	</div><!-- 중간폭 -->
	<div style ="width: 13.5%"></div>
</div>


<script>


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
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>