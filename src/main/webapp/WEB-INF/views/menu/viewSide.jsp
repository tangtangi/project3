<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<title>Domino's Menu!!</title>  
<style>
	.line{border-bottom:2px solid black;}
	.name1{
		font-size:35px;
		font-weight:bold;
		height:55px;
	}
	.name2{
		font-size:16px;
	    padding-bottom: 5px;
	}
	.name3{
		font-size:18px;
		font-weight:bold;
		height:45px;
	}
	.pizzaSize{  /* 피자 사이즈 */
		background-color:#ff143c;
		color:white;
		font-size:19px;
		font-weight:bold;
		text-align:center;
		border:1px solid #ff143c;
		border-radius: 50px 50px 50px 50px;
		height:58px;
		width:240px;
	}
	.pizzaSizeNoSel{  /* 피자 사이즈 */
	    color: #888;
	    font-size: 19px;
	    font-weight: bold;
	    text-align: center;
	    border: 1px solid #888;
	    border-radius: 50px 50px 50px 50px;
	    height: 58px;
	    width: 240px;
	}
	.pizzacount{  /* 피자 수 */
		color:white;
		font-size:19px;
		text-align:center;
		border:1px solid #dddddd;
		border-radius: 50px 50px 50px 50px;
		height:58px;
		width:200px;
	}
	.pizzacount2{ /* 피자 수량 */
		font-weight:bold;
		border:0px;
		border:0px;
		height:55px;
		text-align:center;
		width:80px;
	}
	.dough input[type='radio'] :checked :after {
		background: red; border-color: #adb8c0;
	}
	.doughname{
		color:#8c8a88;
		font-size:17px;
		height:35px;
	}
	.box1{
		overflow-y: scroll;
		height:365PX;
		width:100%;
	    border: 1px solid #ddd;
	    padding: 30px 0;
	}
	.box2{
		font-size:16px;
	}
	.countbox1{  /* 개수 클릭 박스*/
		color:white;
		font-size:19px;
		text-align:center;
		border:1px solid #dddddd;
		border-radius: 50px 50px 50px 50px;
		height:58px;
		width:140px;
	}
	.countbox2{ /* 클릭 수 */
		font-weight:bold;
		border:0px;
		border:0px;
		height:55px;
		text-align:center;
		width:50px;
	}
	.menuImg { 
	    position: absolute;
	    top: 10px;
	    left: 10px;
	    width: 100%;
	    transition : top .3s;
	 }
	 .menuImg2{
	    position: fixed;
	    top: 14%;
	    left: 13.5%;
	    width: 34%;
	    transition : top .3s;
	 }
	 td>a{
	 	color: gray;
	 }
	 .hide{
/* 	 	display: none; */
	 }
	 .seeAll{
	 	/* position: absolute;
	    bottom: 160px;
	    left: 100%;
	    min-width: 100px; */
	    cursor: pointer;
	 } 
	 .seeAllAfter{
	 	position: absolute;
	    bottom: 160px;
	    left: 100%;
	    min-width: 100px;
	 }
</style>

<!-- 하단 장바구니 담기 영역 스타일 -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300;500&family=Noto+Sans+KR&display=swap');
	.view_footer{
		background-color:#f5f5f5;
		max-height:202px;
		transition : all .3s;
	}
	.view_footer_height{
		background-color:#f5f5f5;
		max-height:500px;
		transition : all .3s;
		overflow: auto;
		
	}
	.order{
		background-color:#ff143c;
		text-align:center;
		height:48px;
		border:1px solid #ff143c;
		color:white;
		font-size:18px;
		width:160px;
	}
	.order>a{color:white;text-decoration: none;}
	.price1{/* 총 금액 */
		font-size:17px;
	}
	.price2{
		font-size:24px;
		font-weight:bold;
	}
	.ftName1{/* 피자, 사이드, 음료이름 */
		font-size:18px;
		font-weight:bold;
		height:50px;
	}
	.ftName2{/* 메뉴이름 */
		font-size:15px;
		height:30px;
		
	}
	.ftName3{/* 피자옵션 */
		font-size:14px;
		color:#888896;
	}
	.alignTop{
	    vertical-align: top;
	}
	.innerBox{
		width: 33.3%;
		text-align: center;
	}
	 .view_footer_input{
	 	background: #f5f5f5;
	 	outline: none;
	 	border: 0;
		font-family: "Noto Sans KR"; 
	 }
	 .view_footer_input2{
	 	background: #f5f5f5;
	 	outline: none;
	 	border: 0;
	 	color: #888;
		font-family: "Noto Sans KR"; 
	 }
	 .total{
	 	font-size:24px;
		font-weight:bold;
	 }
</style>
 
 <!-- 젤 위 메뉴 -->
 <!-- 피자 / 사이드 / 음료-->
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >메뉴</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table border=0>
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
		<td  width=13.5% ></td>
	</tr>
</table  >


<c:if test="${menu eq 'sidedish' }">
		<table width=100% border=0>
		<tr ><td height=27px colspan=4></td></tr>
		<tr>
			<td width=13.5% ></td>
			<td width=35% style="position: relative;"><img src="/image/imageMenu/${list.image }" class="menuImg" id="floatMenu"></td>
			<td width=3%></td>
			<td width=35%>
				<table width=100% class="line">
					<tr>
						<td class="name1">${list.name }</td>
					</tr>
					
				</table>
				<table width=100% class="line" border=0>
					<tr>
						<td class="name3" colspan=2>수량선택</td> <!-- 피자수량 -->
					</tr>
					<tr>
						<td class="pizzacount" >
							<table width=100%>
								<tr>
									<td width=15%>
										<a href="javascript:void(0);" onclick="change(1)" id="changePlus" name="changePlus" >+</a>
									</td> <!-- 페이지 이동 안함. -->
									<!-- <td width=15%><a href="javascript:void(0);" onclick="change(1)" ">+</a></td> -->  <!-- 페이지 이동 안함. -->
									<!-- <td width=15%><a href="#" onclick="change1(1)" >+</a></td> --><!-- 페이지 제일 위로 이동함. -->
									<td align=center><input id ="pizzaCnt" readonly name="countPizza" value="1" class="pizzacount2"></td>
									<td width=15%><a href="javascript:void(0);" onclick="change(-1)"  id="changeMinus"  style="text-align:center;">-</a></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr><td height=40 colspan=2></td></tr>
				</table>
		<!-- ------------------------------음료&기타--------------------------- -->
				<table width=100% class="line" border=0>
					<tr>
						<td class="name3" colspan=2>음료&기타</td>
					</tr>
					<tr>
						<td style="width: 100%;" >
							<div class="box1">
								<table style="width: 100%;">
									<!-- 반복 -->
									<c:forEach items="${juice }" varStatus="stat" var="juice">
										<input type="hidden" value="${juice.uid }" name="juiceUid">
										<input type="hidden" value="${juice.name }" name="juiceName">
										<input type="hidden" value="${juice.price }" name="juicePrice">
										<tr>
											<td class="innerBox"><img src="/image/imageMenu/${juice.image_s}" width=90 height=90></td>
											<td  class="box2">${juice.name }<br>${juice.price }</td>
											<td  class="innerBox" >
												<table width=140 height=120 border=0 class="countbox1">
													<tr>
														<td width=35%><a href="javascript:void(0)" class="juiceChange(1,${stat.index })"  >+</a></td>
														<td align=center><input readonly name="count2" value="0" class="countbox2 juiceChange(0,${stat.index })"></td>
														<td width=35%><a href="javascript:void(0)" class="juiceChange(-1,${stat.index })"  style="text-align:center;">-</a></td>
													</tr>
												</table>
											</td>
										</tr>
									</c:forEach>
									<!-- 반복 -->
								</table>
							</div>
						</td>
					</tr>
					<tr><td height=40 colspan=2></td></tr>
				</table>
				
			</td>
			<td  width=13.5% ></td>
		</tr>
	</table>




<!-- 사이드 하단 장바구니 담기 영역 -->
<table width=100%  style="z-index: 2; position: fixed; bottom: 0px;" border=0>
	<tr>
		<td width=100%>
			<table width=100%>
				<tr>
				<td width=100% colspan=6 height=45 >
						<table width=100% height=100% style="margin-bottom: -9px;">
							<tr>
								<td width=13%></td>
								<td class="seeAll" width=5% style="border:1px solid #b6b6b6;background-color:white;font-size:14px;color:#868686;text-align:center"><div >전체보기</div></td>
								<td width=84%><input id="heightValue" type="hidden" value="0" ></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
<form action="/cart/orderPizza" id="orderForm" method="post">
			<table width=100% class="view_footer" border=0 style="display: inline-block;min-height: 168px;margin: 0 0 -7px 0;" >
				<tr>
					<td  width=13.5% rowspan=2 ></td>
					<td  class="ftName1">피자</td>
					<td  class="ftName1">음료 & 기타</td>
					<td  class="ftName1"></td>
					<td  align=center rowspan=2 border=0 style="position: absolute;top: 100px;">
						<table border=0>
							<tr>
								<td class="price1" height=45px>총 금액 
									<span class="price2"> 
										<input readonly id="total" class="view_footer_input total" value="<fmt:formatNumber type="number" maxFractionDigits="3" value='${list.price}' />" style="width:100px;text-align: right;">원
									</span>
								</td>
							</tr>
							<tr>
								<td class="order">
									<input type="hidden" name="count" id="count" value="1">
									<input type="hidden" name="size" value="L">
									<input type="hidden" name="size_M" value="">
									<input type="hidden" name="menu_uid" value="${list.uid}">
									<input type="hidden" name="name" value="${list.name}">
									<input type="hidden" id="footPrice2" value="${list.price }" >
									<input type="hidden" name="sidedish" value="side" >
									<a href="#" onclick="orderForm.submit()">장바구니 담기</a>
								</td>
							</tr>
						</table>
					</td>
					<td  width=13.5% rowspan=2></td>
				</tr>
				<tr>
	<!-- 				//	name='juiceNames'// name='juiceCounts' -->
						<td width=18% class="alignTop">
							<table border=0 width=100% >
								<tr>
									<td  class="ftName2">${list.name }
										(<input id="footPrice" class="view_footer_input" style="width: 48px; font-size: 15px;text-align: center;" value="<fmt:formatNumber type="number" maxFractionDigits="3" value="${list.price}" />">원)
										x <input name="countPizza" value="1" readonly class="view_footer_input" style="width: 20px;">
										<!-- x <input id="countPizza" value="1" readonly class="view_footer_input" style="width: 20px;"> -->
									</td>
								</tr>
								<tbody id="tblShow1" class="hide"></tbody>
							</table>
						</td>
						<td width=18% class="alignTop">
							<table border=0 width=100%>
								<c:forEach items="${juice }" varStatus="stat" var="juice">
									<tr name="tblShow3" style="display: none;"><td>
										<input name='juiceNames' value="${juice.name }(${juice.price }원)" readonly class='view_footer_input' style='width:180px;'>
										<span class='view_footer_input2'>x</span>
										<input name='juiceCounts' id='countJuice' value="0" readonly class='view_footer_input' style='width:14px;'>
									</td></tr>
								</c:forEach>
							</table>
						</td>
						<td width=18% class="alignTop">
							<table border=0 width=100%>
								<tbody id="tblShow2" class="hide"></tbody>
							</table>
						</td>
				</tr>
			</table>	
</form>
		</td>
	</tr>
</table>




</c:if>


<div style="padding:0 0 180px 0;"></div>




<script>
/* 새로고침 시 확인하고 하기. */
// window.onbeforeunload = function () {
// return 'Are you sure you want to leave?';
// };
/* 수량 박스 */
	function change(num){
		var x = document.getElementsByName("countPizza");
		for(var i = 0 ; i < x.length ; i++){
			var y = Number(x[i].value)+num;
			if(y < 1) y = 1;
			x[i].value = y;
		}
	}

</script>





<script>
 
	/* 피자 수량 플러스 버튼, 마이너스 버튼---------------------------------------------------------------------------------------------------------------------------------- --- */
	/* 피자 수량 플러스 버튼 */
	 $("#changePlus").on("click",function(){ 
		$("#countPizza").val(parseInt($("#countPizza").val(), 10)+1) ; 
		var juiceCnt = document.getElementsByName("juiceCounts");
		var pizzaCnt = document.getElementById("pizzaCnt").value;

		var total = document.getElementById("total").value; //total 인풋 값.
		var sum = 0 ;
		for(var i = 0 ; i < juiceCnt.length ; i++){
			sum = sum + juiceCnt[i].value * document.getElementsByName("juicePrice")[i].value;// 음료 합
		}
		var pizzaPrice = $("#footPrice2").val();

		total = parseInt(pizzaPrice*pizzaCnt) + sum ;
		total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
		$("#total").val(total);
		count.value=pizzaCnt;
	});
	 /* 피자 수량 마이너스 버튼 */
	 $("#changeMinus").on("click",function(){ 

		if($("#countPizza").val()>1){
			$("#countPizza").val(parseInt($("#countPizza").val(), 10)-1) ; 
		}
		var juiceCnt = document.getElementsByName("juiceCounts");
		var pizzaCnt = document.getElementById("pizzaCnt").value;

		var total = document.getElementById("total").value; //total 인풋 값.
		var sum = 0 ;
		for(var i = 0 ; i < juiceCnt.length ; i++){
			sum = sum + juiceCnt[i].value * document.getElementsByName("juicePrice")[i].value;// 음료 합
		}
		var pizzaPrice = $("#footPrice2").val();
		total = pizzaPrice*pizzaCnt + sum ;
		total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
		$("#total").val(total);
		count.value=pizzaCnt;
	});
	 
	 
	 
	
	
	 /* 음료 버튼 누르면  ---------------------------------------------------------------------------------------------- */
	 $("a[class*=juiceChange]").on("click",function(){
	
		 /* 클래스 뒤에 인덱스값 잘라서 가져오기. */
			var thisClass = $(this).attr('class');		//클래스 이름 가져와서
	/* 		sideChange(1,${stat.index }) */
			var start_num = thisClass.indexOf(",")+1;	// ,뒤의 값 변수지정. 
			var end_num = thisClass.indexOf(")");	// )의 값 변수지정. 
			var index = thisClass.substring(start_num,end_num); //,부터 )까지 문자열 자르기 => index값이 됨.
			var num ; 

			/* 하단 푸터 변수선언. */
			var toppingCnt = document.getElementsByName("toppingCounts");
			var sideCnt = document.getElementsByName("sideCounts");
			var juiceCnt = document.getElementsByName("juiceCounts");
			var pizzaCnt = document.getElementById("pizzaCnt").value;
		
			
			//수량 제한
			var juiceTotalCnt = 0;
			for(var i = 0 ; i < juiceCnt.length ; i++){
				juiceTotalCnt = juiceTotalCnt + parseInt(juiceCnt[i].value); 
			}
			
		 	/* num 값 세팅 */
			if(thisClass.substring(12,13)==1){	// + 버튼을 누르면
			
				if(juiceTotalCnt >= pizzaCnt ){
					alert("음료는 사이드디시 1개당 1개 까지 가능 합니다.");
				}else{
			
					num = parseInt(1);
					/* 해당 버튼 옆 인풋(수량) 값 변경 */
					 var x = document.getElementsByName("count2");
						var y = Number(x[index].value)+num;
						if(y < 0) y = 0;
						x[index].value = y;
					
					/* 음료 uid,name값 가져오기 */
					var uid = document.getElementsByName("juiceUid")[index].value;
					var name = document.getElementsByName("juiceName")[index].value;
					var price = document.getElementsByName("juicePrice")[index].value;
					name = name.replace(/(\s*)/g, "");
		
					$.ajax({
						url:"/cart/orderSideDish",
						type:"post",
						data:{uid:uid,count:x[index].value},
					});/////
					
		
					//누르면 보였다 숨겼다 하기.
					var tblShow3 = document.getElementsByName("tblShow3")[index];
					if(thisClass.substring(12,13)==1){	// + 버튼을 누르면
						tblShow3.style.display = "";
					}else{	// - 버튼을 누르면
						if(y==0){
							tblShow3.style.display = "none";
						}
					}
					juiceCnt[index].value = y;
		
					
					var total = document.getElementById("total").value; //total 인풋 값.
					var sum = 0 ;
					juiceTotalCnt = 0;
					for(var i = 0 ; i < toppingCnt.length ; i++){
						sum = sum + toppingCnt[i].value * document.getElementsByName("toppingPrice")[i].value; //토핑 합
					}
					for(var i = 0 ; i < sideCnt.length ; i++){
						sum = sum + sideCnt[i].value * document.getElementsByName("sidePrice")[i].value; //사이드디시 합
					}
					for(var i = 0 ; i < juiceCnt.length ; i++){
						sum = sum + juiceCnt[i].value * document.getElementsByName("juicePrice")[i].value;// 음료 합
					}
					var pizzaPrice = $("#footPrice2").val();
					total = pizzaPrice*pizzaCnt + sum ;
					total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
					$("#total").val(total);
				}
			}else{	// - 버튼을 누르면
				num = parseInt(-1);
				/* 해당 버튼 옆 인풋(수량) 값 변경 */
				 var x = document.getElementsByName("count2");
					var y = Number(x[index].value)+num;
					if(y < 0) y = 0;
					x[index].value = y;
				
				/* 음료 uid,name값 가져오기 */
				var uid = document.getElementsByName("juiceUid")[index].value;
				var name = document.getElementsByName("juiceName")[index].value;
				var price = document.getElementsByName("juicePrice")[index].value;
				name = name.replace(/(\s*)/g, "");

				$.ajax({
					url:"/cart/orderSideDish",
					type:"post",
					data:{uid:uid,count:x[index].value},
				});/////
				

				//누르면 보였다 숨겼다 하기.
				var tblShow3 = document.getElementsByName("tblShow3")[index];
				if(thisClass.substring(12,13)==1){	// + 버튼을 누르면
					tblShow3.style.display = "";
				}else{	// - 버튼을 누르면
					if(y==0){
						tblShow3.style.display = "none";
					}
				}
				juiceCnt[index].value = y;

				
				var total = document.getElementById("total").value; //total 인풋 값.
				var sum = 0 ;
				juiceTotalCnt = 0;
				for(var i = 0 ; i < toppingCnt.length ; i++){
					sum = sum + toppingCnt[i].value * document.getElementsByName("toppingPrice")[i].value; //토핑 합
				}
				for(var i = 0 ; i < sideCnt.length ; i++){
					sum = sum + sideCnt[i].value * document.getElementsByName("sidePrice")[i].value; //사이드디시 합
				}
				for(var i = 0 ; i < juiceCnt.length ; i++){
					sum = sum + juiceCnt[i].value * document.getElementsByName("juicePrice")[i].value;// 음료 합
				}
				var pizzaPrice = $("#footPrice2").val();
				total = pizzaPrice*pizzaCnt + sum + parseInt(doughPrice.value);
				total = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",");
				$("#total").val(total);
			}
	});

	/* 전체보기 -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- */
/*	$(".seeAll").on("click",function(){
		$("#tblShow1").toggle();	//클릭하면 보였다 안보였다. 하기.
		$("#tblShow2").toggle();	//클릭하면 보였다 안보였다. 하기.
		//$("[name=tblShow3]").toggle();	//클릭하면 보였다 안보였다. 하기.
		
		//var x = document.getElementsByName("tblShow3");
		var cnt = document.getElementsByName("juiceCounts");
		
		for(var i =0 ; i<cnt.length ;i++){
				console.log(cnt[i].value);
				console.log(cnt[0]);
			if(cnt[i].value>=1){
				$("[name=tblShow3]").eq(i).toggle();	//클릭하면 보였다 안보였다. 하기.
			}
		}
	});

	*/

	/* 전체보기 -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*- */
	$(".seeAll").on("click",function(){
		var x = $("#heightValue");
		if(x.val()==0){ //0이면 작은것 - >키워야함.
			$('.view_footer').attr('class', 'view_footer_height');
			x.val("1");
		}else{	//1이면 큰것 -> 줄여야함.
			$('.view_footer_height').attr('class', 'view_footer');
			x.val("0");
		}
	});

	
</script>

<!-- position fixed 했기 때문에 푸터는 굳이 필요 없을 듯. -->
<%-- <%@ include file="/WEB-INF/views/include/view_footer.jsp" %> --%>