<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>모바일 상품권(도미노콘)</title>
<style>
	.giftInfo{
		color:#888888;
		font-size:15px;
	}
	/* 메뉴 리스트 */
	.foodname{/* 음식 이름  */
		font-size:20px;
		color:#111111;
		font-weight:bold;
		height:45px;
	}
	.foodname>a{ color:black; text-decoration: none;}
	
	.price{/* 가격 */
		font-size:17px;
		color:#111111;
		font-weight:bold;
		height:40px;
	}
	.pizzainfo{/* 피자 설명글 */
		font-size:15px;
		color:#888888;
		height:20px;
	}
	.juicebutton{ /* 음료 수량 버튼 */
		border:0px solid #dddddd;
		background-color:white;
		height:47px;
		width:47px;\
		text-align:center;
	}
	.juicecount{ /* 음료 수량박스 */
		border:0px;
		border-right:1px solid #dddddd;
		border-left:1px solid #dddddd;
		height:47px;
		text-align:center;
		width:80px;
	}
	.juicecount input:focus {outline:none;}
	.order{ /* 음료 주문 버튼 */
		background-color: #ff143c;
		color:white;
		font-size:16px;
		font-weight:bold;
		text-align:center;
		border:1px solid #ff143c;
		width:100px;
		height:55px;
	}
	
	.sizeSpan{
		color: red;
	    width: 30px;
	    display: inline-block;
	   	text-align: center;
	}
</style>

<script>
	var msg = "${msg}";
	
	if( msg == "cart_ok"){
		alert("장바구니에 담았습니다.");
	}else if (msg == "cartCount_1"){
		alert("이미 장바구니에 담겨있습니다.");
	}else if(msg == "cart_login"){
		alert("로그인 후 이용바랍니다.");
	}
	
	
/* 수량 박스 */
	function change(num,index){
		var x = document.getElementsByName("count");
		var y = Number(x[index].value)+num;
		if(y < 1) y = 1;
		x[index].value = y;
	}
	
</script>
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >상품권 선물</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table border=0>
				<tr>
					<td class="submenu_a" align=left width=185px><a href="/menu/gift">모바일상품권(도미노콘) </a></td>
					<td class="submenu_b" align=center  width=170px><a href="/menu/giftInfo" >상품권 사용 안내</a></td>
				</tr>
			</table>
		</td>
		<td  width=13.5% ></td>
	</tr>
</table>
<table height=225px width=100% border=0>
	<tr>
		<td width=13.5% ></td>	
		<td width=70% align=center style="border-bottom:1px solid #dddddd;"><img src="/image/gift.PNG"></td>
		<td width=13.5% ></td>
	</tr>
</table>
<table border=0 width=100%>
	<tr>
		<td width=13.5% ></td>
		<td width=73%>
			<table width=100% align=center>
		<c:forEach var="gift" items="${gift }" varStatus="num">
			<c:if test="${num.index%4 == 0 }"><tr></c:if>
				<td width=25% align=center border=1 Style="padding:0 0 32px 0;">
					<table  width=300 >
						<tr><td colspan=2><img src="/image/upload/${gift.image} " width=300 height=300></td>
						<tr><td class="foodname" colspan=2>${gift.pizza }</td></tr>
						<tr><td class="price" colspan=2>오리지널<span class="sizeSpan">L</span><fmt:formatNumber type="number" maxFractionDigits="3" value="${gift.price_L}" />원</td></tr>
						
						<tr>
							<td width=60% style="border:1px solid #dddddd;">
								<form name="countform">
								<table>
									<tr>
										<td class="juicebutton" align=center><a href="javascript:change(1,${num.index })" >+</a></td>
										<td ><input name="count" value="1" class="juicecount"></td>
										<td class="juicebutton" align=center><a href="javascript:change(-1,${num.index })" style="text-align:center;">-</a></td>
									</tr>
								</table>
								</form>
							</td>
							<form method="post" action="/cart/gift">
								<td width=40% align=center>
									<input type="hidden" name="pizza" value="${gift.pizza }">
									<input type="submit" value="담기" class="order">
								</td>
							</form>
						</tr>
					</table>
				</td>
			<c:if test="${num.index%4 == 3} "></tr></c:if>
		</c:forEach></table>
		</td>	
	
		<td width=13.5% ></td>
		</tr>
</table>

--------------------------------------------------
<form  id='form1'  method="post" enctype="multipart/form-data"  >
<table>
	<tr>
		<td>이름1</td>
		<td><input name="name"></td>
	</tr>
	<tr>
		<td>사이즈</td>
		<td><input name="size_L"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input name="price_L"></td>
	</tr>
	<tr>
		<td>첨부파일</td>
		<td><input name="file" type="file"></td>
	</tr>
	
	<tr>
		<td></td>
		<td><input type="submit" value="글쓰기"></td>
	</tr>
</table>
</form>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>