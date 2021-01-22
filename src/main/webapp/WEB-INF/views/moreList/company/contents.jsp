<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Domino's Pizza!!</title>
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
	    width: 24%;
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
</style>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1 style="font-family: ">회사 소개</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/company/contents">회사 소개</a> > 
				<a href="/moreList/company/contents">한국도미노피자</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/company/contents"><b>한국도미노피자</b></a></div>
			<div style="padding: 0 10px;"><a href="/moreList/company/tvcfList">광고갤러리</a></div>
		</div>
		<div class="maniaUl">
			<ul >
				<li><a href="javascript:show_layer('1');" class="a active">Overview</a></li>
				<li><a href="javascript:show_layer('2');" class="a">CEO</a></li>
				<li><a href="javascript:show_layer('3');" class="a">International</a></li>
				<li><a href="javascript:show_layer('4');" class="a">Location</a></li>
			</ul>
		</div>
		
		
	</div>
	<div style ="width: 13.5%"></div>
</div>

<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center; " id="tab01"><img alt="탭1" src="/image/overview.png"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab02"><img alt="탭2" src="/image/ceo.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none; position: relative;" id="tab03">
		<img alt="탭3" src="/image/international01.jpg">
		<a class="inter" href="https://www.dominos.com/index.intl.html"></a>
		<img alt="탭3" src="/image/international02.jpg">
		<img alt="탭3" src="/image/international03.jpg">
	</div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab04"><img alt="탭4" src="/image/location.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab05"><img alt="탭5" src="/image/tab05.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab06"><img alt="탭6" src="/image/tab06.jpg"></div>
	<div style ="width: 13.5%"></div>
</div>
<style>
/* 데스크탑 */
.inter{
   /*  border: 2px solid #0078ae;
    color: #0078ae; */
    z-index: 1;
    font-size: 14px;
    width: 224px;
    height: 30px;
    display: inline-block;
    position: absolute;
    top: 155px;
		left: 456px;
}
/* 모바일 */
@media screen and (min-width:1500px){

	.inter{
	   /*  border: 2px solid #0078ae;
	    color: #0078ae; */
	    z-index: 1;
	    font-size: 14px;
	    width: 224px;
	    height: 30px;
	    display: inline-block;
	    position: absolute;
	left: 41.5%;
	    top: 155px;
	}
}

</style>
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