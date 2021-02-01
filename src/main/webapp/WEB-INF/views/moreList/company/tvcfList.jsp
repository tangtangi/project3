<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>CF Gallery!!</title>
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
/* 	.maniaUl>ul>li>a:after{
		content: ">";
	    position: absolute;
	    right: 10px;
		
	} */
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
#tab01 ul {
    display: inline-grid;
    margin: 0 0 50px 0;
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 46px 23px;
}
#tab01 ul li{
	border: 1px solid lightgray;
	list-style: none;
    width: 270px;
    height: 240px;
}
#tab01 ul li div{
	display: flex;
	align-items: center;
	width: 270px;
	position: relative;
	min-height: 90px;
}
#tab01 ul li div p{
    width: 212px;
    padding: 0 15px 0 55px;
}
.movieImg{
    position: absolute;
    top: 22%;
    left: 20px;
}
</style>

<!-- 모달창 띄우기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<div id="ex1" class="modal" style="max-width: 700px;">
	<h1>[도미노피자] 스타 셰프 컬렉션 2종 피자 출시!</h1>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/O6CDKKfrwjw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<br><a href="#" rel="modal:close">닫기</a>
</div>
<!-- 모달창 띄우기 -->

 

<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1 style="font-family: ">회사 소개</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/company/contents">회사 소개</a> > 
				<a href="/moreList/company/tvcfList">광고갤러리</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/company/contents">한국도미노피자</a></div>
			<div style="padding: 0 10px;"><a href="/moreList/company/tvcfList"><b>광고갤러리</b></a></div>
		</div>
		<div class="maniaUl">
			<ul >
				<li><a href="javascript:show_layer('1');" id="tabA01" class="a active">TV CF</a></li>
				<li><a href="javascript:show_layer('2');" id="tabA02" class="a">인쇄광고</a></li>
				<li><a href="javascript:show_layer('3');" id="tabA03" class="a">웹진</a></li>
			</ul>
		</div>
		
		
	</div>
	<div style ="width: 13.5%"></div>
</div>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%; text-align: center; " id="tab01">
		<ul>
			<c:forEach begin="0" end="6">
				<li>
					<a href="#ex1" rel="modal:open">
						<div><img src="/image/cfImg01.jpg"></div>
						<div><img src="/image/movieImg.jpg" class="movieImg"> <p>[도미노피자] 스타 셰프 컬렉션 2종 피자 출시!</p></div>
					</a>
				</li>
			</c:forEach>
			<!-- <li>
				<div><img src="/image/cfImg01.jpg"></div>
				<div><img src="/image/movieImg.jpg" class="movieImg"> <p>[도미노피자] 스타 셰프 컬렉션 2종 피자 출시!</p></div>
			</li>
			<li>3</li> 
			<li>4</li>
			<li>5</li>
			<li>6</li> -->
		</ul>
	</div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab02"><img alt="탭2" src="/image/cf02.jpg"></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab03">
		<h1 style="float: left; width: 41%; padding: 22px;">DOMINO INSIDE</h1>
		<div style="clear: both;"> <img alt="탭3" src="/image/cf03.jpg"></div>
		
	</div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab04"><img alt="탭4" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab05"><img alt="탭5" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab06"><img alt="탭6" src=""></div>
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