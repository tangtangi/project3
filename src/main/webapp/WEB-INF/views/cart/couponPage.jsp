<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>coupon 주문</title>
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
	/* .a{
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
	} */

/* 	.active{
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
	} */
	.maniaUl>ul>li>a:after{
		content: ">";
	    position: absolute;
	    right: 10px;
		
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
	
	.x1{
	
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
		/* height: 70px; */
	    line-height: 70px;
	    background: #f5f5f5;
	   
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
	.addressBox1{
   /* display: flex; */
    height: 70px;
    line-height: 70px;
    background: #f5f5f5;
	}
  .box_head1{
      clear: both;
       display: flex;
       border-bottom: 2px solid black;
       padding: 10px 0px;
   } 
</style>
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >e-coupon 주문</td>
		<td width=13.5% ></td>
	</tr>
</table>
<div style="display: flex; margin-top: 30px;">
   <div style ="width: 13.5%"></div>
   
   <div style ="width: 73%">
      <div style="display: flex;justify-content: space-between;align-items: baseline;">
         <div  style="float:left">
            <h1 style="font-family: ">주문방법 선택</h1>
         </div>
         <div style="float:rigth">
            <a href="/">홈</a> > 
            <a href="#">주문방법 선택</a> > 
            <a href="javascript:show_layer('1');" id="tab011" style="">배달 주문</a>
            <a href="javascript:show_layer('2');" id="tab021" style="display: none;">포장 주문</a>
         </div>
      </div>
	<!-- 배달 주소 -->
      <div class="box_head1" >
         <div style="  border-right: 1px solid black;   padding-right: 10px;">
            <a href="javascript:show_layer('1');" id="tabA01"  class="a active">배달 주문</a></div>
         <div style="padding: 0 10px;">
         	<a href="javascript:show_layer('2');" id="tabA02" class="a">포장 주문</a></div>
      </div>
      <!-- 배달 주소  -->
      <div class="addressBox1" id="tab0111" style="">
         <div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartPizza.jpg">밖에서 도미노 피자 먹고 싶을 땐?</span>
               <a href="#"><span style="float: right;color: #238ece; ">DOMINO SPOT 배달 ></span></a>
         </div>
      </div>
      <!-- 포장 주소  -->
      <div class="addressBox1" id="tab0222" style="display: none;">
         <div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartCar.jpg">도미노 드라이빙 픽업 서비스 이용</span>
               <a href="#"><span style="float: right;color: #238ece; ">이용안함 ></span></a>
         </div>
      </div>
      <!-- DB에 있는 주소 출력 -->
      <form method="post" id="tab01">
         <c:forEach var="address" items="${address }" varStatus="stat">
            <div class="form_box" style="clear: both;">
               <div class="form_mini_box">
                  <div class="form_left2"><input type="radio" name="address" id="radio${stat.index }" value="${address.uid }" <c:if test="${stat.index eq '0' }"> checked</c:if>> </div>
                  <div class="form_left"><label for="radio${stat.index }">${address.address }</label><p>${address.store_name}</p> <span>${address.phone }</span></div>
                  <div class="form_right"><a style="font-size: 20px;color: #ccc;" href="javascript:void(0);" onclick="deleteOne(${address.uid })">X</a></div>
               </div>
            </div>
         </c:forEach>
      <!-- 배달 주소-->
      <div class="addressBox1" >
         <div style="color: #238ece; padding: 0 30px;">
            <a href="/cart/address?e_coupon=${gift.e_coupon }" class="addressEnroll" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;text-align: center;" >+ 배달주소 등록</a>
               <a href="#"><span style="float: right;color: orange; ">*배달 주소는 5개까지만 등록 가능합니다.</span></a>
         </div>
      </div>   
         <div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
            해당 배달주소로 주문을 진행하시겠습니까?
            <div style="width: 15px;"> </div>
            <a href="javascript:void(0)" onclick="orderOK()" class="goToGift" style="background: #ff143c; text-align: center;">선택</a>
         </div>   
      </form>
      
      <!-- 포장 주소 -->
      
      <form method="post" id="tab02" style="display: none;">
            <div class="form_box" style="clear: both;">
               <div class="form_mini_box">
                  <div class="form_left2"><input type="radio" name="addressStore" id="radio01" checked> </div>
                  <div class="form_left"><label for="radio01">울산삼산점 매장<span>052-256-3083</span></label><p>울산삼산점</p> <span>울산 남구 돋질로 246,1층(달동)</span></div>
                  <div class="form_right"><a style="font-size: 20px;color: #ccc;">X</a></div>
               </div>
            </div>
      
      <div class="addressBox1" >
         <div style="color: #238ece; padding: 0 30px;">
            <a href="/cart/address?e_coupon=${gift.e_coupon }" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;text-align: center;">+ 포장매장 등록</a>
               <a href="#"><span style="float: right;color: orange; ">*포장 매장은 5개까지만 등록 가능합니다.</span></a>
         </div>
      </div>   
         <div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
            해당 배달주소로 주문을 진행하시겠습니까?
            <div style="width: 15px;"> </div>
            <a href="/member/cart3" class="goToGift" style="background: #ff143c; text-align: center;">선택</a>
         </div>   
      </form>
      
   </div>
   <div style ="width: 13.5%"></div>
</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%">
		<!-- 주문내역 -->
		<div class="addressBox" style="border-top:1px solid black;">
			<div style="padding: 0 30px;"><span>주문내역</span></div>
		</div>
		<div class="littleHeader" style="height: 80px;">
			<div style="width: 50%; line-height: 3;display: flex;justify-content: center;align-items: center;">상품정보</div>
			<div style="width: 20%; line-height: 3;display: flex;justify-content: center;align-items: center;">수량</div>
			<div style="width: 30%; line-height: 3;display: flex;justify-content: center;align-items: center;"></div>
		</div>
			<div class="littleContent">
				<div class="little" style="width: 50%; height: 90px;">
					<div style="width:200px;"></div>
					<div><img alt="사진" src="/image/upload/${gift.image}" width="90px" height="90px"></div>
					<div class="content" >
						<p style="margin-left: 15px;margin-bottom: 8px;  margin-top: 17px;">[모바일]${gift.pizza}</p>
<%-- 						<p style="text-align: left;margin-left: 70px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${cartgift.price_L}" />원</p> --%>
					</div>
				</div>
				<div class="little" style="width: 20%;justify-content: center;">${gift.count }</div>
				<div class="little" style="width: 30%;justify-content: center;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${gift.price_L * gift.count }" />원</div>
			</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="littleContent" style="height:70px;">
			<div class="little" style="width: 30%;"></div>
			<div class="little" style="width: 30%;"></div>
			<div class="little" style="width: 10%;"></div>
				<c:set var="sum" value="${sum+(gift.price_L * gift.count)}"/>
			<div style="width: 20%; font-size: 30px; color:black;align-self: center;"><span style="font-size: 20px; margin: 0 30px 0 0px; ">총 금액</span> <fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원</div>
			<div class="little" style="width: 10%;"></div>
		</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox" style="border-top:1px solid black;">
			<div style="padding: 0 30px;"><span>주문자 정보</span></div>
			
		</div>
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<table style="margin-left: 80px;margin-top: 55px;margin-bottom:55px;">
				<tr>
					<td>연락처</td>
					<td >${member.phone}</td>
				</tr>
			</table>
			</div>
		</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox"  style="border-top:1px solid black;">
			<div style="padding: 0 30px;"><span>최종 결제 금액</span></div>
		</div>
		<div class="form_box" style="clear: both;">
			<table style="margin-left: 30px; margin-top: 20px;margin-bottom: 20px;" width=100%>
				<tr>
					<td align=center  width=75% style="height: 123px;vertical-align: bottom;">
						<table align=center width=50%>
							<tr>
								<td class="money">총 상품 금액</td>
								<td rowspan=2 class="money3">-</td>
								<td class="money">총 할인 금액</td>
								<td rowspan=2 class="money3">=</td>
								<td class="money">총 결제 금액</td>
							</tr>
							<tr>
								<td class="money2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원</td>
								<td class="money2" style="color:red;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum}" />원</td>
								<td class="money2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${0}" />원</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4;">
			<div style="width: 15px;"> </div>
			<a href="/menu/lastOrder?e_coupon=${gift.e_coupon }" class="goToGift" style="color: white;background: #ff143c; text-align: center;">주문하기</a>
		</div>	
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
	 
	 function orderOK(){
		 
	 	alert("해당 주소가 선택 되었습니다.");
	 }
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
