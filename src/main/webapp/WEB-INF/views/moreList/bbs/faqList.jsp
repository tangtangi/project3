<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Frequently asked Question!!</title>
<style>
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	div a{
		color: black;
	}
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
	    width: 24.3%;
	    text-align: center;
	    padding: 3px 0;
	    z-index: -1;
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
/* 	.maniaUl>ul>li>a:after{ */
/* 		content: ">"; */
/* 	    position: absolute; */
/* 	    right: 10px; */
		
/* 	} */
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
	/* 아코디언 시작 */
	
    input[name="aaccordion"]{
        display: none;
    }
    input[name="aaccordion"] + label{
        display: block;
        padding: 20px;
	    border-bottom: 1px solid lightgray;
        cursor: pointer;
        position: relative;
        text-align: left;
    }
    input[name="aaccordion"] + label em{
        position: absolute;
        top: 50%;
        right: 10px;
        width: 30px;
        height: 30px;
        margin-top: -15px;
        display: inline-block;
    }
    input[name="aaccordion"]:checked + label em{
    	display: none;
    }
    input[name="aaccordion"]  + label b{
    	display: none;
    }
    input[name="aaccordion"]:checked  + label b{
        position: absolute;
        top: 50%;
        right: 10px;
        width: 30px;
        height: 30px;
        margin-top: -15px;
        display: inline-block;
        
    }
   input[name="aaccordion"] + label + div{
		max-height: 0;
		transition: all .3s;
		overflow: hidden;
		background: #F9F9F9;
		font-size: 11px;
		border-bottom: 1px solid lightgray;
       
        
    }
      input[name="aaccordion"] + label + div p{
		display: inline-block;
		padding: 20px;
		font-size: 14px;
		color: #555;
    }
     input[name="aaccordion"]:checked + label + div {
         max-height: 500px;
    }
    .aaccordion2 div p:before{
    	content: 'A';
	    font-weight: 600;
	    color: #ff143c;
	    font-size: 16px;
	    margin-right: 20px;
	    vertical-align: 2px;
 		margin: -5px 0px 15px 23px;
  	  	display: block;
    }
    .aaccordion2 label:before{
		content: 'Q';
	    font-weight: 600;
	    color: #238ece;
	    font-size: 16px;
	    vertical-align: 2px;
	    margin: 0 20px;
	    
    }
    .aaccordion2 div{
		display: flex;
		justify-content: left;
    }
	.aaccordion2 div p {
		text-align:left;
	}
	
	/* 아코디언 끝 */
	
</style>
<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>고객센터</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/bbs/faqList">고객센터</a> > 
				<a href="/moreList/bbs/faqList">자주하는 질문</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/bbs/faqList"><b>자주하는 질문</b></a></div>
<!-- 			<div style="padding: 0 10px;"><a href="/moreList/bbs/qnaForm">온라인 신문고</a></div> -->
		</div>
		<div class="" style="padding: 50px 0 30px; border-bottom: 1px solid lightgray;">
			<p>도미노피자에 대한 궁금증을 바로 확인하실 수 있습니다.</p>
			<span style="font-size: 14px; color: red; margin: 20px 0 0;display: inline-block;">도미노피자 고객만족센터</span>
			<a href="tel:080-860-3082" style="font-size: 14px; color: red;">080-860-3082</a>
		</div>
		
		<!-- ------------------------------ -->
		<div class="maniaUl">
			<ul >
				<li><a href="javascript:show_layer('1');" id="tabA01" class="a active">피자주문하기</a></li>
				<li><a href="javascript:show_layer('2');" id="tabA02" class="a">주문확인</a></li>
				<li><a href="javascript:show_layer('3');" id="tabA03" class="a">포장 주문</a></li>
				<li><a href="javascript:show_layer('4');" id="tabA04" class="a">피자 선물하기</a></li>
				<li><a href="javascript:show_layer('5');" id="tabA05" class="a">도미노콘</a></li>
				<li><a href="javascript:show_layer('6');" id="tabA06" class="a">피자 상품권</a></li>
				<li><a href="javascript:show_layer('7');" id="tabA07" class="a">홈페이지 관련</a></li>
				<li><a href="javascript:show_layer('8');" id="tabA08" class="a">배달서비스 평가</a></li>
			</ul>
		</div>
	</div>
	
	<div style ="width: 13.5%"></div>
</div>



<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	
<!-- 탭1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 -->	
	<div style ="width: 73%; text-align: center; " id="tab01">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="1" id="mmore01" onclick="doOpenCheck(this)">
		    <label for="mmore01">예약주문만 가능한 경우는 왜 그런가요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p >배달사원부족, 주문폭주 등으로 부득이 하게 예약주문만 가능한 경우가 있습니다. 이 경우 매장이나 콜센터(1577-3082)로 전화하셔도 예약주문만 가능하기 때문에 고객님의 많은 양해 
				부탁 드립니다. <br>또한, 매장 오픈시간 전이나, 영업 종료 후에는 예약 주문만 가능합니다.</p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="2" id="mmore02" onclick="doOpenCheck(this)">
		    <label for="mmore02">매장상태에 따른 주문불가는 무엇인가요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>"주문불가" 인 경우 현재 매장이 불가피한 사정으로 인해 온라인주문이 불가능한 상황입니다. 가령 식자재부족이나 리뉴얼, 임시휴무 등으로 당일 온라인주문을 받을 수 없는 경우
				입니다. 이런 경우 온라인주문은 불가능하고, 매장이나 콜센터(1577-3082)로 전화하시면 매장상태를 다시 한번 확인한 후 방문포장의 경우 다른 매장으로 변경 가능합니다. 
				(배달주문은 매장을 변경할 수 없습니다.)</p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="3" id="mmore03" onclick="doOpenCheck(this)">
		    <label for="mmore03">하프&하프가 무엇인가요? 
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>피자 한판에 2가지 맛을 즐길 수 있는 메뉴입니다. 동일사이즈(도우 타입이 동일해야 함)의 피자 2종류를 선택하셔서 주문하시면 됩니다. 
					가격은 선택하신 두 종류 피자 별 절반 가격의 합계입니다. ex) 포테이토 + 불고기 → (25,900 + 24,900) / 2 = 25,400 
					서로 다른 도우의 피자는 하프&하프가 불가 합니다. ex) 더블크러스트 이베리코 피자 
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
	
<!-- 탭2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab02">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="4" id="mmore04" onclick="doOpenCheck(this)">
		    <label for="mmore04">신용카드/휴대폰 승인 및 취소 현황은 어떻게 확인하나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>신용카드/휴대폰 승인 및 취소 현황은 피자 주문 시 사용하신 신용카드사 또는 통신사 홈페이지를 통해서 확인하실 수 있습니다.</p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="5" id="mmore05" onclick="doOpenCheck(this)">
		    <label for="mmore05">신용카드 결제내역 영수증을 출력하고 싶은데요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>주문을 완료하신 후에 My Page > 주문/배송조회로 이동합니다. > 주문 번호를 클릭하신 후 주문 상세 페이지의 영수증 출력을 클릭하시면 해당 주문의 영수증을 출력할 수 있습니다.</p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="6" id="mmore06" onclick="doOpenCheck(this)">
		    <label for="mmore06">주문한 내역은 어디에서 확인할 수 있나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>주문한 내역은 My Page의 주문/배송조회를 통해 확인하실 수 있으며 배달주문/포장주문 / 피자선물/ 피자상품권 등으로 구매내역을 확인하실 수 있습니다.
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333-->
	<div style ="width: 73%; text-align: center; display:none;" id="tab03">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="7" id="mmore07" onclick="doOpenCheck(this)">
		    <label for="mmore07">주문한 내역을 다시 확인하고 싶은데 어디에서 확인할 수 있나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>주문하신 내역은 도미노피자 온라인 하단의 My Page -> 주문/배송 조회-> 방문포장내역을 통하여 포장주문 상세내역 및 주문상태를 확인하실 수 있습니다.</p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="8" id="mmore08" onclick="doOpenCheck(this)">
		    <label for="mmore08">&lt;화끈한 화요일&gt;은 무엇인가요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>도미노피자에서 고객님께 제공해 드리는 화요일 특별 프로모션 입니다.매주 화요일 마다 온라인으로 방문포장 주문 시 피자 40% 할인을 해 드립니다
					전체 매장에서 동일하게 이용할 수 있습니다(리조트점 등 일부 특수매장 제외) 익일 예약 주문 시에는 화끈한 화요일 혜택을 이용할 수 없으며, 특수일, 공휴일에는 프로모션을 운영하지 않습니다</p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="9" id="mmore09" onclick="doOpenCheck(this)">
		    <label for="mmore09">방문포장 주문 이용  시간은 어떻게 되나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>피자 수령은 11:15 ~ 22:30까지(매장 별 다름) 가능합니다. 포장 예약 시, 도착 예정시간의 날짜와 시간 모두를 확인하여 주십시오. 
				11:00~21:59까지는 당일 및 익일의 포장예약주문이 가능합니다. 22:00~23:59까지는 익일의 포장예약주문이 가능합니다. 00:00~11:29까지는 당일 및 익일의 포장예약주문이 가능합니다. 
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab04">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="10" id="mmore10" onclick="doOpenCheck(this)">
		    <label for="mmore10">피자 선물하기를 이용할 때 유의사항은 무엇인가요? 
	        	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>① 결제는 신용카드 선결제와 휴대폰 선결제 를 이용하실 수 있습니다. 
					<br/><br>② 결제 완료 후 메뉴 변경 및 취소는 불가능합니다. 
					<br/><br>③ 메뉴를 변경하실 경우 주문을 취소하고 다시 주문을 하셔야 합니다.
					<br/><br>④ 주문취소는 주문하신 매장으로 전화를 하여 요청하여야 합니다. 
					<br/><br>⑤ 주문이 취소되면 신용카드/휴대폰의 승인도 자동으로 취소됩니다.
					<br/><br>⑥ 승인취소여부는 취소 다음날 이용하신 해당 카드사 및 통신사 홈페이지를 통해서 확인하실 수 있습니다. 
					<br/><br>⑦ 수령하실 매장 선택시 반드시 매장 위치를 확인하시기 바랍니다. 
					<br/><br>⑧ 수령자 정보(이름/휴대폰)를 정확하게 입력해 주시기 바랍니다. 정보의 오기재로 인해 피자가 전달되지 못한 경우, 환불이 불가능합니다.
			</p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="11" id="mmore11" onclick="doOpenCheck(this)">
		    <label for="mmore11">피자 선물하기 주문은 어떻게 하나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>① 홈페이지 메인화면 또는 온라인주문 내에 피자 선물하기를 선택합니다.
					<br/><br>② 피자를 선물하실 장소(배달지)를 등록합니다. 
					<br/><br>③ 피자 및 사이드디쉬, 음료 등을 선택합니다. 
					<br/><br>④ 할인 선택에서 이용 가능한 할인혜택을 선택합니다
					<br/><br>⑤ 주문 내역을 확인한 후 수령인 정보에 선물 받으실 분의 성함과 연락처를 적습니다. 
					<br/><br>⑥ 주문내역을 다시 한번 확인한 후 추가 사항을 입력합니다. 
					<br/><br>⑦ 결제하기 버튼을 누르면 결제수단(휴대폰 또는 신용카드)를 선택하고 주문완료 버튼을 누릅니다.
					<br/><br>⑧ 결제창이 열리면 결제정보를 입력하고 결제를 완료합니다. 
					<br/><br>⑨ 주문이 완료됩니다.</p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="12" id="mmore12" onclick="doOpenCheck(this)">
		    <label for="mmore12">피자 선물하기는 무엇인가요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>피자 선물하기는 온라인 주문을 이용하여 선물받을 분께 원하시는 지역 및 시간에 맞춰 따뜻하고 맛있는 피자를 보내드리는 선물 주문 서비스 입니다.
					<br/>
					<br/><br>회사에서 집에 있는 가족에게, 
					<br/><br>타지에서 생일을 맞이한 친구에게, 
					<br/><br>사랑하는 연인에게 피자를 보내고 싶을 때, 
					<br/><br>피자 선물하기를 통해 온라인상에서 주문 및 결제를 마치시면 도미노피자 전국매장에서 원하시는 주소로 피자를 배달해드립니다. 
					<br/><br>
					<br/><br>웹사이트 및 도미노피자 모바일을 통해 선물하기 주문이 가능합니다. 
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭5555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab05">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="13" id="mmore13" onclick="doOpenCheck(this)">
		    <label for="mmore13">도미노콘은 어디서 사용 가능한가요?
	        	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>온라인 주문 시에만 이용이 가능합니다.(전화주문 불가)
					<br/><br>도미노콘에 명시된 피자 또는 동일 가격 피자에 대해서 주문할 수 있습니다. 
					<br/><br>단, 명시된 피자보다 가격이 높은 피자를 주문할 경우 추가 금액을 지불하셔야 하며, 명시된 피자보다 가격이 낮은 피자를 주문할 경우에는 잔여금액에 대하여 환급은 받을 수 없습니다.
				</p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="14" id="mmore14" onclick="doOpenCheck(this)">
		    <label for="mmore14">도미노콘을 삭제했는데 번호 확인 가능한가요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>홈페이지 로그인 후 MY PAGE > 주문/배송내역 > 피자 상품권 구매내역 > 주문내역상세 화면에서 구입하신 도미노콘 번호를 확인 하실 수 있습니다.
		        </p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="15" id="mmore15" onclick="doOpenCheck(this)">
		    <label for="mmore15">구매 후 취소/환불은 어떻게 하나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>도미노콘 구입 후 MMS로 발송된 도미노콘은 취소/환불이 불가합니다.
					<br/><br>자세한 문의는 고객만족센터(080-860-3082)로 문의하시기 바랍니다.
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭6666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab06">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="16" id="mmore16" onclick="doOpenCheck(this)">
		    <label for="mmore16">문의사항 및 불만 사항이 있는데요?
	        	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>피자상품권과 관련하여 문의사항 및 불만사항이 있으시면 080-860-3082으로 문의 바랍니다. ※ 운영시간 : 10:00 ~ 17:00 
		        </p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="17" id="mmore17" onclick="doOpenCheck(this)">
		    <label for="mmore17">피자상품권의 유효기간은 얼마나 되나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>상품권 유효기간은 5년 입니다.
		        </p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="18" id="mmore18" onclick="doOpenCheck(this)">
		    <label for="mmore18">피자상품권은 어떻게 사용하나요?
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>구매하신 피자상품권은 도미노피자 전국 매장에서 사용이 가능합니다. 
					<br/>
					<br/><br>매장이나 콜센터(1577-3082)로 전화하실 경우, 주문 전에 피자상품권의 사용여부 및 종류를 미리 말씀해주시면, 피자상품권에 명시된 피자 또는 동일 가격 피자에 대해서 주문할 수 있습니다. 
					<br/>
					<br/><br>단, 명시된 피자보다 가격이 높은 피자를 주문할 경우 추가 금액을 지불하셔야 하며, 명시된 피자보다 가격이 낮은 피자를 주문할 경우에는 잔여금액에 대하여 환급은 받을 수 없습니다.  
					<br/>
					<br/><br>상품권은 세트메뉴 주문 시 사용 불가하며 방문포장 할인 및 쿠폰 할인 등 다른 할인쿠폰과 중복하여 사용할 수 없습니다.
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab07">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="19" id="mmore19" onclick="doOpenCheck(this)">
		    <label for="mmore19">휴면계정으로 처리됐는데 어떻게 해야 하나요?
	        	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>'정보통신망 이용촉진 및 정보보호 등에 관한 제 29조 2항(2015년 8월 18일 시행)에 의거'하여 1년 이상 도미노피자 서비스를 이용하지 않은 회원님들의 개인정보는 파기 또는 분리 저장,관리됩니다. <br>
					<br/>
					<br/><br>지속적인 서비스 이용 및 혜택 안내를 원하실 경우,
					<br/>도미노피자 온라인(홈페이지/모바일/앱)에 1회 이상 로그인을 통해 서비스 이용에 불편함이 없으시길 바랍니다.<br>
					<br/>
					<br/><br>휴면계정 해제를 원하실 경우, 본인인증 후 휴면계정 해제 신청을 하시면 기존 계정으로 서비스 이용 가능합니다. <br>
		        </p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="20" id="mmore20" onclick="doOpenCheck(this)">
		    <label for="mmore20">뉴스레터로 받은 쿠폰 출력 시 인증번호와 유효기간만 출력됩니다.
		     	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>뉴스레터를  통해 발송하는 모든 쿠폰은 인증번호와 유효기간이 부여되어 제공됩니다.
					<br/>
					<br/>받으시는 쿠폰 출력 시 인증번호와 유효기간만 출력되는 경우가 있습니다.
					<br/>
					<br/>이러한 현상이 발생할 시 도구>인터넷 옵션>고급>인쇄에서 배경 및 이미지 인쇄 항목을 클릭하시면 쿠폰 이미지와 함께 정상적으로 출력하실 수 있습니다.
		        </p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="21" id="mmore21" onclick="doOpenCheck(this)">
		    <label for="mmore21">탈퇴하는 방법을 알려주세요
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>탈퇴는 나의정보 -&gt 설정변경 -&gt 회원탈퇴 절차를 거쳐 진행합니다.
					<br/>
					<br/>탈퇴 시에는 회원정보 중 아이디를 제외한 개인정보는 모두 삭제됩니다.
					<br/>
					<br/>탈퇴한 회원의 아이디는 다른 회원이 사용하여 생길 수 있는 아이디 도용 문제를 차단하기 위해 재사용할 수 없도록 되어 있으니 양해 부탁드립니다.
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
<!-- 탭8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888 -->
	<div style ="width: 73%; text-align: center; display:none;" id="tab08">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<c:forEach begin="0" end="0">
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="22" id="mmore22" onclick="doOpenCheck(this)">
		    <label for="mmore22">온라인 서베이 참여 쿠폰은 어떻게 사용하나요?
	        	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>온라인 서베이 참여 후 제공되는 피자 20% 할인쿠폰은 인터넷 주문 시 이용 가능합니다
					<br/><br>마이 쿠폰함을 확인하세요
		        </p>
		    </div>
		</div>
		</c:forEach>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="23" id="mmore23" onclick="doOpenCheck(this)">
		    <label for="mmore23">온라인 서베이는 어떻게 할 수 있나요?
		     	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>1. 온라인 주문 고객은 익일 고객의 이메일로 설문지가 발송됩니다. 
					<br/> 2. 주문하신 피자에 대한 만족도 및 매장의 서비스 평가가 가능합니다.
					<br/>3. 설문 참여 기간은 이메일 수령 후 2일간 참여가 가능합니다.
					<br/>
					<br/> 고객님의 소중한 평가를 바탕으로 더욱 친절한 서비스를 제공해 드릴 수 있도록 최선의 노력을 다 하겠습니다
					<br/>
		        </p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="24" id="mmore24" onclick="doOpenCheck(this)">
		    <label for="mmore24">온라인 서베이란 무엇인가요
		       	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>	고객의 소중한 의견을 반영하여 더욱 좋은 서비스를 제공하기 위해 온라인에서 진행하는 서베이 입니다. 
					<br/><br>
					<br/><br>E-MAIL로 참여하기
					<br/><br>온라인 주문 완료 시, 익일 서베이 메일이 고객님의 이메일로 발송이 됩니다.
					<br/><br>주문하신 피자에 대한 만족도 및 매장의 서비스를 평가해 주세요
					<br/><br>안내에 따른 설문조사 완료 시, 마이쿠폰함에 모든피자 20% 할인 쿠폰이 제공됩니다
					<br/><br>
					<br/><br>홈페이지 참여하기
					<br/><br>도미노피자의 프로모션, 제품 등 다양한 정책에 대한 고객님의 의견을 듣습니다.
					<br/><br>홈페이지 하단에 온라인 서베이 클릭 시 참여가 가능합니다
					<br/><br>안내에 따른 설문조사 완료 시, 마이쿠폰함에 모든피자 20% 할인 쿠폰이 제공됩니다
					<br/>
				</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
	
	
	<div style ="width: 13.5%"></div>
</div>




<script>

/* 체크박스 체크 한개만 되게 하기 */
function doOpenCheck(chk){
    var obj = document.getElementsByName("aaccordion");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}
 
 
/* 
$(document).ready(function() {
	$("#mania1").addClass("active");
	$("#tab01").show();
	$("#tab02").hide();
	$("#tab03").hide();
	$("#tab04").hide();
	$("#tab05").hide();
	$("#tab06").hide();
});
 
//탭 변경
///아래 함수 실행 자체가 안됨...어떻게 하는거지...ㅠㅠ
var changeTab = function(tabNo) {
	
	$("#tab01").hide();
	$("#tab02").hide();
	$("#tab03").hide();
	$("#tab04").hide();
	$("#tab05").hide();
	$("#tab06").hide();
	
    $("#tab" + tabNo).show();
    
}; 
 */

var b = $('.maniaUl > ul > li');		
	b.find('a').click(function(){
	b.find('a').removeClass("active");
	$(this).addClass("active");
});
 	function show_layer(tabNo){
	 
			
	document.all.tab01.style.display="none";
	document.all.tab02.style.display="none";
	document.all.tab03.style.display="none";
	document.all.tab04.style.display="none";
	document.all.tab05.style.display="none";
	document.all.tab06.style.display="none";
	document.all.tab07.style.display="none";
	document.all.tab08.style.display="none";

	 switch(tabNo)
	 {
	  case '1':
	  document.all.tab01.style.display=""; 
	  break;
	  case '2':
	  document.all.tab02.style.display="";
	  break;
	  case '3':
	  document.all.tab03.style.display="";
	  break;
	  case '4':
	  document.all.tab04.style.display="";
	  break;
	  case '5':
	  document.all.tab05.style.display="";
	  break;
	  case '6':
	  document.all.tab06.style.display="";
	  break;
	  case '7':
	  document.all.tab07.style.display="";
	  break;
	  case '8':
	  document.all.tab08.style.display="";
	  break;
	 } 
	
} 
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>