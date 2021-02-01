<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Mania's benefits!!</title>
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
</style>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1 style="font-family: ">도미노 서비스</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/service/mania">도미노 서비스</a> > 
				<a href="/moreList/service/mania">매니아 혜택</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/service/mania"><b>매니아 혜택</b></a></div>
			<div style="padding: 0 10px;"><a href="/moreList/service/groupOrder">단체주문 서비스</a></div>
		</div>
		<div class="maniaUl">
			<ul >
				<li><a href="javascript:show_layer('1');" id="tabA01" class="a active">도미노매니아란?</a></li>
				<li><a href="javascript:show_layer('2');" id="tabA02" class="a">도미노 매니아 등급별 혜택</a></li>
				<li><a href="javascript:show_layer('3');" id="tabA03" class="a">도미노 혁신 서비스</a></li>
				<li><a href="javascript:show_layer('4');" id="tabA04" class="a">도미노 매니아 컬쳐</a></li>
				<li><a href="javascript:show_layer('5');" id="tabA05" class="a">도미노 틴 매니아</a></li>
				<li><a href="javascript:show_layer('6');" id="tabA06" class="a">도미노스 데이</a></li>
			</ul>
		</div>
		
		
	</div>
	<div style ="width: 13.5%"></div>
</div>

<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center; " id="tab01"><img alt="탭1" src="/image/tab01.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab02"><img alt="탭2" src="/image/tab02.jpg">
		<a href="/mypage/myCoupon" class="goToGift">쿠폰 선물하러 가기</a>	
	</div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab03"><img alt="탭3" src="/image/tab03.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab04"><img alt="탭4" src="/image/tab04.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab05"><img alt="탭5" src="/image/tab05.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab06"><img alt="탭6" src="/image/tab06.jpg"></div>
	<div style ="width: 13.5%"></div>
</div>

<script>
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
	 } 
	
} 
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>