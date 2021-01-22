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
         max-height: 100px;
    }
    .aaccordion2 div p:before{
    	content: 'A';
	    font-weight: 600;
	    color: #ff143c;
	    font-size: 16px;
	    margin-right: 20px;
	    vertical-align: 2px;
	    margin: 0 20px;/* 
	    position: absolute;
	    top: 28px;
	    left: 36px; */
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
			<div style="padding: 0 10px;"><a href="/moreList/bbs/qnaForm">온라인 신문고</a></div>
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
	
	
	<div style ="width: 73%; text-align: center; " id="tab01">
		<!-- 아코디언 -->
		<div style="border: 1px solid black;"></div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion" value="1" id="mmore01" onclick="doOpenCheck(this)">
		    <label for="mmore01">질문 내용
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div >
		        <p>답변 내용</p>
		    </div>
		</div>
		<div class="aaccordion2">
		    <input type="checkbox" name="aaccordion"  value="2" id="mmore02" onclick="doOpenCheck(this)">
		    <label for="mmore02">질문 내용
		    	<em><img style="width: 30px; height: 30px;" src="/image/arrowDown.png"></em>
		    	<b><img style="width: 30px; height: 30px;" src="/image/arrowUp.png"></b> 
		    </label><!--em 태그 이미지 전환시 사용-->
		    <div>
		        <p>답변 내용</p>
		    </div>
		</div>
		<!-- 아코디언 -->
	</div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab02"><img alt="탭2" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab03"><img alt="탭3" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab04"><img alt="탭4" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab05"><img alt="탭5" src=""></div>
	<div style ="width: 73%; text-align: center; display:none;" id="tab06"><img alt="탭6" src=""></div>
	
	
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