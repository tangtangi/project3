<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Domino's Menu!!</title>    
<style>
/* 메뉴 카테고리 */	
	.submenuname{
		text-align:center;
		font-size:28px;
		height:130px;
		font-weight:bold;
	}
/* 메뉴 리스트 */
	.foodname{/* 음식 이름  */
		font-size:20px;
		color:#111111;
		font-weight:bold;
		height:85px;
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
	.juicebutton>a{color:black; text-decoration: none;}
	.juicecount{ /* 음료 수량박스 */
		border:0px;
		border-right:1px solid #dddddd;
		border-left:1px solid #dddddd;
		height:47px;
		text-align:center;
		width:80px;
	}
	.order{ /* 음료 주문 버튼 */
		background-color:red;
		color:white;
		text-align:center;
		border:1px solid red;
	}
</style>
<script>
/* 수량 박스 */
	function change(num){
		var x = document.getElementsByName("count");
		var y = Number(x[0].value)+num;
		if(y < 1) y = 1;
		x[0].value = y;
	}
</script>


<table 	style="width:100%; height:115px;">
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >메뉴</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table >
				<tr>
					<c:if test="${menu eq 'pizza' }">
						<td class="submenu_a" width=60px><a href="/menu/list?menu=pizza" style="color: black;" ><b>피자</b></a></td>
						<td class="submenu_a" align=center width=140px><a href="/menu/list?menu=sidedish">사이드디시</a></td>
						<td class="submenu_a" align=center  width=140px><a href="/menu/list?menu=juice" >음료&기타</a></td>
					</c:if>
					
					<c:if test="${menu eq 'sidedish' }">
						<td class="submenu_a" width=60px><a href="/menu/list?menu=pizza">피자</a></td>
						<td class="submenu_a" align=center width=140px><a href="/menu/list?menu=sidedish" style="color: black;" ><b>사이드디시</b></a></td>
						<td class="submenu_a" align=center  width=140px><a href="/menu/list?menu=juice" >음료&기타</a></td>
					</c:if>
					
					<c:if test="${menu eq 'juice' }">
						<td class="submenu_a" width=60px><a href="/menu/list?menu=pizza" >피자</a></td>
						<td class="submenu_a" align=center width=140px><a href="/menu/list?menu=sidedish">사이드디시</a></td>
						<td class="submenu_a" align=center  width=140px><a href="/menu/list?menu=juice"  style="color: black;"><b>음료&기타</b></a></td>
					</c:if>
				</tr>
			</table>
		</td>
		<td width=13.5% ></td>
	</tr>
</table>
<!-- <table  width=100% align=center border=0> -->
<table style="width:100%; align:center; text-align: center;">
<c:if test="${menu eq 'pizza' }">
	<tr>
		<td width=13.5% rowspan=6></td>
		<td class="submenuname">프리미엄</td>
		<td width=13.5% rowspan=6></td>
	</tr>
</c:if>
<c:if test="${menu ne 'pizza' }">
	<tr>
		<td width=13.5% rowspan=6></td>
		<td class="submenuname"><!-- 프리미엄 --></td>
		<td width=13.5% rowspan=6></td>
	</tr>
</c:if>
	<tr><td align=center width=73% >
		<table width=100% align=center >
			<c:if test="${menu eq 'pizza' }">
				<c:forEach var="list" items="${list }" varStatus="status" begin="0" end="10" >
						<c:if test="${status.index%4 ==0}"><tr></c:if>
								<td width=25% align=center style="padding:0 0 32px 0;">
									<table  border=0 width=300>
										<tr><td colspan=2><a href="/menu/view?uid=${list.uid }&menu=${menu}"><img src="/image/imageMenu/${list.image}" width=300 height=300></a></td>
										<tr><td colspan=2 class="foodname"><a href="/menu/view">${list.name} </a>
											<c:if test="${list.uid <= 2 }"><img src="/image/day.PNG" style="margin-bottom: -3px;"></c:if>
											<c:if test="${list.uid <= 16 }"><img src="/image/new.PNG" style="margin-bottom: -4px;"></c:if>
										</td></tr>
										<tr>
											<td class="price">
												<span style="color:red;">
													L
												</span>
												<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_L}" />원~ &nbsp;&nbsp;&nbsp;&nbsp;
												<c:if test="${list.size_M eq 'M' }">
														<span style="color:red;">M</span>
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_M}" />원~
												</c:if>
											</td>
										</tr>
										<tr><td class="pizzainfo" style="height:50px;">${list.info } </td></tr>
									</table>
								</td>
						<c:if test="${status.index%4 ==3}"></tr></c:if>
				</c:forEach>
			</c:if>
			<c:if test="${menu eq 'sidedish' }">
				<c:forEach var="list" items="${list }" varStatus="status">
						<c:if test="${status.index%4 ==0}"><tr></c:if>
							<td width=25% align=center style="padding:0 0 32px 0;">
								<table  border=0 width=300>
									<tr><td><a href="/menu/viewSide?uid=${list.uid }&menu=${menu}"><img src="/image/imageMenu/${list.image }" width=300 height=300 ></a></td>
									<tr><td class="foodname">${list.name }<br>  <c:if test="${status.index<=3 }"><img src="/image/new.PNG" style="margin-bottom: -4px;"></c:if></td></tr>
									<tr><td class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price }" />원</td></tr>
								</table>
							</td>
						<c:if test="${status.index%4 ==3}"></tr></c:if>
				</c:forEach>
			</c:if>
			<c:if test="${menu eq 'juice' }">
				<c:forEach var="list" items="${list }" varStatus="status">
						<c:if test="${status.index%4 ==0}"><tr></c:if>
							<td width=25%  align=center style="padding:0 0 32px 0;">
								<table  border=0 width=300>
									<tr><td colspan=2><img src="/image/imageMenu/${list.image }" width=300 height=300></td>
									<tr><td colspan=2 class="foodname">${list.name }</td></tr>
									<tr><td colspan=2 class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price}" />원</td></tr>
									<tr>
										<td width=60% style="border:1px solid #dddddd;">
											<form name="countform">
											<table>
												<tr>
													<td class="juicebutton" align=center><a href="#" onclick="change(1);" >+</a></td>
													<td ><input name="count" value="1" class="juicecount"></td>
													<td class="juicebutton" align=center><a href="#" onclick="change(-1);" >-</a></td>
												</tr>
											</table>
											</form>
										</td>
										<td class="order" width=40%>주문</td>
									</tr>
									
								</table>
							</td>
						<c:if test="${status.index%4 ==3}"></tr></c:if>
				</c:forEach>
			</c:if>
		</table>
	</td></tr>
	
<c:if test="${menu eq 'pizza' }">	
	<tr>
		<td class="submenuname">하프앤하프 시그니처</td>
	</tr>
	
	<tr><td align=center border=0 width=73% >
	<table width=100% align=center border=0>
		<c:if test="${menu eq 'pizza' }">
			<c:forEach var="list" items="${list }" varStatus="status" begin="11" end="14" >
					<c:if test="${status.index%4 ==3}"><tr></c:if>
							<td width=25% align=center style="padding:0 0 32px 0;" >
								<table  border=0 width=300 <c:if test="${status.index == 13 ||status.index == 14 }">style="display:none;"</c:if>>
									<tr><td colspan=2><a href="/menu/view?uid=${list.uid }&menu=${menu}"><img src="/image/imageMenu/${list.image}" width=300 height=300></a></td>
									<tr><td colspan=2 class="foodname"><a href="/menu/view">${list.name} </a>
										<c:if test="${list.uid <= 2 }"><img src="/image/day.PNG" style="margin-bottom: -3px;"></c:if>
										<c:if test="${list.uid <= 16 }"><img src="/image/new.PNG" style="margin-bottom: -4px;"></c:if>
									</td></tr>
									<tr>
										<td class="price">
											<span style="color:red;">
												L
											</span>
											<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_L}" />원~ &nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${list.size_M eq 'M' }">
													<span style="color:red;">M</span>
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_M}" />원~
											</c:if>
										</td>
									</tr>
									<tr><td class="pizzainfo" style="height: 50px;">${list.info } </td></tr>
								</table>
							</td>
					<c:if test="${status.index%4 ==2}"></tr></c:if>
			</c:forEach>
		</c:if>
	</table>
	
	<tr>
		<td class="submenuname">클래식</td>
	</tr>
	
		<tr><td align=center border=0 width=73% >
	<table width=100% align=center border=0>
		<c:if test="${menu eq 'pizza' }">
			<c:forEach var="list" items="${list }" varStatus="status" begin="13" end="20" >
					<c:if test="${status.index%4 ==1}"><tr></c:if>
							<td width=25% align=center style="padding:0 0 32px 0;">
								<table  border=0 width=300>
									<tr><td colspan=2><a href="/menu/view?uid=${list.uid }&menu=${menu}"><img src="/image/imageMenu/${list.image}" width=300 height=300></a></td>
									<tr><td colspan=2 class="foodname"><a href="/menu/view">${list.name} </a>
										<c:if test="${list.uid <= 2 }"><img src="/image/day.PNG" style="margin-bottom: -3px;"></c:if>
										<c:if test="${list.uid <= 16 }"><img src="/image/new.PNG" style="margin-bottom: -4px;"></c:if>
									</td></tr>
									<tr>
										<td class="price">
											<span style="color:red;">
												L
											</span>
											<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_L}" />원~ &nbsp;&nbsp;&nbsp;&nbsp;
											<c:if test="${list.size_M eq 'M' }">
													<span style="color:red;">M</span>
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price_M}" />원~
											</c:if>
										</td>
									</tr>
									<tr><td class="pizzainfo" style="height:50px;">${list.info } </td></tr>
								</table>
							</td>
					<c:if test="${status.index%4 ==0}"></tr></c:if>
			</c:forEach>
		</c:if>
	</table>
	
</c:if>
	<!-- 
	
	<tr>
		<td class="submenuname">하프앤하프 시그니처</td>
	</tr>
	<tr>
		<td class="submenuname">클래식</td>
	</tr> -->
</table>




<!-- --------------------------------------------------------------------------------------------------------- -->
<a href="/menu/insert">인서트페이지로 이동</a>
<a></a>
<a href="/uploadForm">/uploadForm.jsp로 이동.</a>

<!-- <form id='registerForm' role="form"  action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame"> -->
<form id='form1' action="/uploadForm" method="post" enctype="multipart/form-data" target="zeroFrame">
	<div>
		<input name="name" placeholder="피자이름">
		<input name="price" placeholder="가격">
		<label><input type="radio" name="size" value="L" placeholder="사이즈" checked>L</label>
		<label><input type="radio" name="size" value="M" placeholder="사이즈">M</label>
		<br>
		<input name="signdate" placeholder="등록일??" >
		<input name="dough" placeholder="도우" value=" ">
		<input name="topping" placeholder="토핑" value=" ">
	</div>
	<div>
		<input type="file" name="file">
	</div>
	<div>
		<input type="submit">
	</div>
</form>

<form action="/uploadFormSide" method="post" enctype="multipart/form-data" >
	<div>
		<input name="name" placeholder="사이드 이름(토핑)">
		<input name="price" placeholder="사이드 가격(토핑)" value="1000">
		<br>
		<input name="signdate" placeholder="등록일??">
		<input name="category" placeholder="사이드 이넘" value="3">
		<input name="menu"  value="pizza">
	</div>
	<div>
		<input type="file" name="file">
	</div>
	<div>
		<input type="submit">
		<input type="text" value="0" name="x">
		<input type="submit" value="사이드 데이터 삭제" onclick=" x.value='1';">
	</div>
</form>





	<!-- ----------------------------------- -->
	
	<%--  피자 양식
	<tr>
		<td align=center>
			<table  border=0>
				<tr><td><a href="/menu/view"><img src="/image/pizza1.jpg" width=300 height=300></a></td>
				<tr><td class="foodname"><a href="/menu/view">세배 피자 </a><img src="/image/day.PNG" style="margin-bottom: -3px;"><img src="/image/new.PNG" style="margin-bottom: -4px;"></td></tr>
				<tr><td class="price"><span style="color:red;">L</span> 34800원~</td></tr>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />
				<tr><td class="pizzainfo">#8천원 할인 쿠폰 <br> #주문 시 사이드디시 반값</td></tr>
			</table>
		</td>
	</tr> --%>
	<%-- 사이드디시 양식 
	<tr>
		<td  align=center>
			<table  border=0>
				<tr><td><img src="/image/side1.jpg" width=300 height=300></td>
				<tr><td class="foodname">블랙타이거 슈림프 알리오 올리오<br> 파스타 <img src="/image/new.PNG" style="margin-bottom: -4px;"></td></tr>
				<tr><td class="price">8800원</td></tr>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />
			</table>
		</td>
	</tr> --%>
	<%--  음료 및 기타 양식
	<tr>
		<td  align=center >
			<table  border=0 width=300>
				<tr><td colspan=2><img src="/image/juice1.jpg" width=300 height=300></td>
				<tr><td colspan=2 class="foodname">코카콜라 1.25L</td></tr>
				<tr><td colspan=2 class="price">2000원</td></tr>
				<tr>
					<td width=60% style="border:1px solid #dddddd;">
						<form name="countform">
						<table>
							<tr>
								<td class="juicebutton" align=center><a href="#" onclick="change(1);" >+</a></td>
								<td ><input name="count" value="1" class="juicecount"></td>
								<td class="juicebutton" align=center><a href="#" onclick="change(-1);" >-</a></td>
							</tr>
						</table>
						</form>
					</td>
					<td class="order" width=40%>주문</td>
				</tr>
				<fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />
			</table>
		</td>
	</tr> --%>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
