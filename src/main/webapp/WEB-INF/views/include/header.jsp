<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<c:set var="session_id" value="${sessionScope.id }"/>
<c:set var="session_pass" value="${sessionScope.pass }"/>
<c:set var="session_level" value="${sessionScope.level}"/>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=divice-width, initial-scale=1, minimum-scale=1,maximum-scale=1"> -->

<!-- 헤더css파일 불러오기 -->
<link rel="stylesheet" href="/css/header.css">

<!-- 가로폭을 기기의 가로폭에 맞추고 콘텐트가 흔들리지 않도록 초기값, 최소,최대값모두 1로 설정. -->
<link href="/image/dominoPizza2.png" rel="icon" type="image/x-icon" />
<!-- 탭 이미지 변경. -->


<!-- slick 이용해서 slide 만들기 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
 
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- xeicon - cdn -->
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- slick 이용해서 slide 만들기 -->  
</head>

<script>
	var prevScrollPos = window.pageYOffset;
	window.onscroll = function(){
		var currentScrollPos = window.pageYOffset;
		var tw = $(".top-wrap");
		var gw = $(".gnb-wrap");
		
		var menuImg = $(".menuImg");//view페이지 사진  21.01.15 우탁 변경.
		var menuImg2 = $(".menuImg2");//view페이지 사진  21.01.15 우탁 변경.

//		if(prevScrollPos >= currentScrollPos){
		if(currentScrollPos >= 300){	//현재스크롤이 70보다 크면
			tw.css({top:tw.position().top=-70+'px'});
			gw.css({top:gw.position().top=0+'px'});
			menuImg.attr('class','menuImg2'); //view페이지 사진  21.01.15 우탁 변경.
			
		}else if(currentScrollPos >= 70){
			tw.css({top:tw.position().top=-70+'px'});
			gw.css({top:gw.position().top=0+'px'});
			menuImg2.attr('class','menuImg'); //view페이지 사진  21.01.15 우탁 변경.
		}
		else{ //현재스크롤이 70보다 작으면
			tw.css({top:tw.position().top=0+'px'});
			gw.css({top:gw.position().top=70+'px'});
			menuImg2.attr('class','menuImg'); //view페이지 사진  21.01.15 우탁 변경.
			//d.css({top:d.position().top+100+'px'}); 더하고 싶을 때 
		}
		prevScrollPos = currentScrollPos;
	}
	//window.scrollTo({top:0, left:0, behavior:'auto'}); //TOP으로

$(document).ready(function(){
 
	$("#buttom").click(function(){
  	  alert(document.body.scrollHeight);
  	});
  
	$(".snb-more").click(function(){
  	var chk = $("input:checkbox[id='more']").is(":checked");
	var snb = $(".snb-wrap");
		if(chk){ //체크 하면 나타내기
			snb.css("max-height",200+'px'); //클래스 .snb-wrap을  max-height: 100px;으로
			$("#moreImg").attr("src","/image/arrowUp.png");	
		}else{ //체크 해제하면 숨기기
			snb.css("max-height",0+'px'); //클래스 .snb-wrap을  max-height: 0px; 으로
			$("#moreImg").attr("src","/image/arrowDown.png");	//src="/image/arrowDown.png"
		}
	});
	
	$.ajax({
		url:"/cart/cartCnt",
		type:"get",
		success:function(count){
			$(".cartCnt").val(count);
			if(count==0){
				$("#cartImg").attr("src","/image/cartEmpty.png");
			}else{
				$("#cartImg").attr("src","/image/cartFull.png");
			}
		}
		
	});
});

	
	
</script>


<body>
<div>
session_id:${session_id}<br>
session_id2:${sessionScope.id2}<br> <!-- 01.21우탁 수정 -->
session_level:${session_level}<br>
</div>
<header id="header">
	<div class="top-wrap">
		<div style="width: 13.5%;"></div>
		<div class= "inner-box" style="width: 15%;">
			<a href="/"> 
				<img alt="dominos" src="/image/dominoPizza3.png" style="width:155px; height:34px;">
				<!-- 		<i class="ico-logo"></i> -->
			</a>
		</div>
		<div class = "location " style="width:45%; text-align: center; align-self: center; "> 
			<a class="myloc" href="/myPage/geoLocation"><img alt="왜 안떠" src="/image/locationArrow.JPG" style="margin-bottom: -5px;">현재위치</a>
		</div>
		<div class="util-nav" style="width:15%;text-align: center; align-self: center;display: flex;  justify-content: space-evenly;"> 
			<c:choose>
				<c:when test="${session_id != null && session_level == 10 }">
					<a href = "/member/logout">로그아웃</a>
					<a href = "/admin/memberList">관리자 페이지</a>
				</c:when>
				<c:when test="${session_id != null}">
					<a href = "/member/logout">로그아웃</a>
					<a href = "/myPage/maniaGrade">나의정보</a>
					<a href = "/cart/pizza_cart"><img id="cartImg" src="/image/cartEmpty.png" style="width: 20px; margin-bottom:-5px; ">
					<sub><input readonly class="cartCnt" id="cartCnt" value=""></sub></a>
					<!-- 1.21 우탁 변경 -->
				</c:when>
				
				<c:otherwise >
					<a href = "/member/login">로그인</a>
					<a href = "/member/join">회원가입</a>
				</c:otherwise>
			</c:choose>
		
		</div>
		<div style="width: 13.5%;"></div>
	</div>
				
	<!-- main 1dep menu -->
	<div id="gnb" class="gnb-wrap">
		<div class="gnb-inner">
			<ul>
				<li class="" >
					<a href="/goods/list?dsp_ctgr=C0101"><span></span></a>
				</li>
				<li>
					<a href="/menu/list?menu=pizza"><span>메뉴</span></a>
				</li>
				<li>
					<a href="/menu/coupon"><span>e-쿠폰</span></a>
				</li>
				<li>
					<a href="/menu/gift"><span>상품권 선물</span></a>
				</li>
				<li>
					<a href="/menu/event"><span>이벤트&middot;제휴</span></a>
				</li>
				<li>
					<a href="/menu/store"><span>매장검색</span></a>
				</li>
				<li>
					<a href="/cart/cart2"><span>카트1</span></a>
	<!-- 				<a href="/cart/pizza_cart"><span>피자주문</span></a>
					<a href="/cart/pizza_cart_last"><span>카트Last</span></a>
 -->				</li>
			</ul>
			<a href="#" class="snb-more ">
				<input type="checkbox" id="more">
				<label for="more">  
					더보기
					<img id="moreImg" style="width: 15px;" src="/image/arrowDown.png">
					<i class="im im-angle-down"></i>
				</label>
			</a>
			<span style="width: 16.5%;"> </span>
		</div>
		
		
	<label for="more">  <!-- label에 for를 주고 137번째 줄 input id와 같게 하면 label 동작(?) -->
		<div class="snb-wrap">
			<div class="inner-box">
				<div class="mnu-wrap">
					<div class="mnu-box">
						<a href="/moreList/service/mania" >도미노 서비스</a>
						<ul>
							<li><a href="/moreList/service/mania">매니아 혜택</a></li>
							<li><a href="/moreList/service/groupOrder">단체주문 서비스</a></li>
						</ul>
					</div>
					<div class="mnu-box">
						<a href="/moreList/bbs/faqList" >고객센터</a>
						<ul>
							<li><a href="/moreList/bbs/faqList">자주하는 질문</a></li>
							<li><a href="/moreList/bbs/qnaForm">온라인 신문고</a></li>
						</ul>
					</div>
					<div class="mnu-box">
						<a href="/moreList/company/contents" >회사소개</a>
						<ul>
							<li><a href="/moreList/company/contents">한국도미노피자</a></li>
							<li><a href="/moreList/company/tvcfList">광고갤러리</a></li>
						</ul>
					</div>
					<div class="mnu-box" style="border-left: 1px solid gainsboro; padding-left: 83px;">
						<a href="/moreList/bbs/newsList?type=N" >공지사항</a>
						<ul>
							<li><a href="/moreList/bbs/newsList?type=N">도미노뉴스</a></li>
							<li><a href="/moreList/bbs/newsList?type=P">보도자료</a></li>
						</ul>
					</div>
					<div class="mnu-box">
						<ul>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
</label>
	</div><!-- gnb-wrap close -->
	<div><a id="top" onclick="window.scrollTo(0,0)" style="cursor: pointer;"><img style="width:10px;" src="/image/arrowUp.png">top</a></div>
	<!-- 
	<div><button id="bottom" >bottom</button></div>
	 -->
</header>

<div style="padding-bottom: 180px;"></div>			
