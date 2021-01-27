<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>피자 장바구니</title>
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
		width: 200px;
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
<table  style="width: 100%; height: 115px;">
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >피자 장바구니</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table >
				<tr>
					<td class="submenu_a" align=left width=120px><a href="/cart/pizza_cart" style="color: black;font-size: 17px;	">피자 주문</a></td>
					<td class="submenu_b" align=center  width=170px><a href="/cart/gift_cart" >상품권 주문</a></td>
				</tr>
			</table>
		</td>
		<td  width=13.5% ></td>
	</tr>
</table>

<c:if test="${cartCnt==0 }">
	<div style ="width: 13.5%"></div>
	<div style="display: flex;">
		<div style ="width: 13.5%"></div>
		<div style ="width: 73%; text-align: center; color: #888;">
			<div style="margin: 60px 0 0 0;"><img src="/image/cartEmpty.png"></div>
			<div>
				<p style="font-size: 35px;">장바구니가 비어있습니다.</p><br>
				<p style="font-size: 14px;">도미노피자의 맛있는 메뉴를 마음껏 골라 담으세요</p><br><br>
			</div>	
			<div><a href="/menu/list?menu=pizza" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;">+ 메뉴 추가하기</a></div><br><br>
			<div><img src="/image/cartNotice.jpg"></div>
		</div>
		<div style ="width: 13.5%"></div>
	</div>
</c:if>
<c:if test="${cartCnt!=0 }">
	<div style="display: flex; ">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<!-- 배달주문일 때 -->
		<div class="addressBox" id="tab0111" style="">
			<div style="padding: 0 30px;"><span>배달주문</span></div>
		<!--<div style="padding: 0 30px;"><span>포장주문</span></div> -->
		</div>
		
		<!-- 포장주문일 때  -->
		<div class="addressBox" id="tab0222" style="display: none;">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartCar.jpg">도미노 드라이빙 픽업 서비스 이용</span>
					<a href="#"><span style="float: right;color: #238ece; ">이용안함 ></span></a>
			</div>
		</div>
		
		<!-- 주문내용 -->
		<div class="form_box" style="clear: both;">
			<div class="form_mini_box">
				<div class="form_left"><span style="font-size: 20px;">${addressVO.address }</span><p>${addressVO.store_name }</p> <span>${addressVO.phone }</span></div>
				<div class="form_right"><a class="aModi" href="cart2">수정</a></div>
			</div>
		</div>
		
		<!-- 주문내역 -->
		<div class="addressBox" id="tab0111" style=" border-top: 2px solid black;">
			<div style="padding: 0 30px; float: left;"><span>주문내역</span></div>
			<div style="padding: 0 30px; float: right; color: gray;"><a href="javascript:void(0);" onclick="deleteAllPizza()" style="font-size: 14px; color:#888;">전체 삭제</a></div>
		<!-- <div style="padding: 0 30px;"><span>포장주문</span></div> -->
		</div>
			
		<div class="littleHeader">
			<div style="width: 50%; line-height: 3;display: flex;justify-content: center;">상품정보</div>
			<div style="width: 20%; line-height: 3;display: flex;justify-content: center;">수량</div>
			<div style="width: 20%; line-height: 3;display: flex;justify-content: center;">금액</div>
			<div style="width: 10%; line-height: 3;display: flex;justify-content: center;"></div>
		</div>
			<c:forEach var="list" items="${list }" >
					<div class="littleContent">
						<div class="little" style="width: 50%; height: 90px;">
							<div><img alt="사진" src="/image/imageMenu/${list.image_s }" width="90px" height="90px"></div>
							<div class="content">
								<p>${list.name }</p>
								<c:if test="${list.category == null }"><p style="color: lightgray; font-size: 12px;"> ${list.dough_name}<c:if test="${list.size ne '' }">/${list.size }</c:if></p></c:if>
								<p><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price + list.dough_price}" />원</p>
							</div>
						</div>
						<div class="little" style="width: 20%;">
							<!-- <a href="javascript:void(0)" onclick="">+</a> -->
								<input value=" ${list.count } " style="outline: 0;border: 0;width: 23px;font-size: 20px;" name="listCount" readonly>
							<!-- <a href="javascript:void(0)" onclick="">-</a> -->
						</div>
						
						<div class="little" style="width: 20%;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.count * list.price + list.count * list.dough_price}" />원</div>
						<div class="little" style="width: 10%;"><a href="javascript:void(0);" onclick="deleteOne(${list.menu_uid },${list.cart_id },'${list.category }')">x</a></div>
					</div>
					
			</c:forEach>
				
			<c:set  var="sum"/>
			<c:forEach var="list" items="${list }">
				<c:set var="sum"  value="${sum + list.count * list.price + list.count * list.dough_price}"/>
			</c:forEach>
			
			<div class="littleContent" style="border-bottom: 2px solid black;    padding: 15px 0;">
				<div class="little" style="width: 30%;"></div>
				<div class="little" style="width: 30%;"></div>
				<div class="little" style="width: 10%;"></div>
				<div style="width: 20%; font-size: 30px; color:black;"><span style="font-size: 20px;margin: 0 0 0 30px;">총 금액</span> <fmt:formatNumber type="number" maxFractionDigits="3" value="${sum }" />원</div>
				<div class="little" style="width: 10%;"></div>
			</div>
				
			
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: left;">
				<div style="width: 15px;"> </div>
				<a href="/menu/list?menu=pizza" class="goToGift" style="background: #fff; text-align: center;border: 1px solid lightgray;color: black;">메뉴 추가하기</a>
			</div>	
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
				<div style="width: 15px;"> </div>
				<a href="/cart/pizza_cart_last" class="goToGift" style="color: white;background: #ff143c; text-align: center;">주문하기</a>
			</div>	
			<div ><img style="margin: 32px 0;" src="/image/cart3Notice.jpg"></div>
		</div><!-- 중간폭 -->
		<div style ="width: 13.5%"></div>
	</div>
</c:if>
<script>

	function deleteOne(menu_uid,cart_id,category){
		if(confirm('해당 제품을 장바구니에서 삭제하시겠습니까?')){	
			$.ajax({
				url:"deleteOne",
				data:{menu_uid : menu_uid,cart_id:cart_id,category:category},
				type:"get",
				success:function(result){
					if(result==0){
						alert('삭제 불가. 사이드 메뉴 부터 삭제 바람');	
					}else if(result==2){
						alert('함께 선택하신 토핑도 같이 삭제 되었습니다.');	
					}else{
					}
						location.reload();
				}
			});
		}
	}
	function deleteAllPizza(){
		if(confirm('모든 제품을 삭제하시겠습니까?')){
			$.ajax({
				url:"deleteAllPizza",
				type:"get",
				success:function(){
					location.reload();
				}
			});		
		}
	
	
	}
	window.onload = function(){
	
		if(${addressVO.address == null}){
			alert('주소를 입력해주세요');	
			location.href="/cart/cart2";
		}
	}
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>