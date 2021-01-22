<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Your Cart!!</title>
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
	.active{
	    font-weight: bold;
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
	
.x{

	display: inline-block;
	width: 100px;
	height: 20px;
	border: 1px solid lightgray;
}
	.form_box{
		border-top: 1px solid black;
	}
	.form_mini_box{
		border-bottom: 1px solid lightgray;
		display: flex;
		min-height: 100px;
	}
	.form_left{
		padding : 0 40px; 
		align-self: center;
		min-width: 80%;
	}
	.form_left2{
		padding-left : 40px; 
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
    height: 70px;
    line-height: 70px;
    background: #f5f5f5;
}
</style>



<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1 style="font-family: ">주문방법 선택</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/member/cart2">주문방법 선택</a> > 
				<a href="javascript:show_layer('1');" id="tab011" style="">배달 주문</a>
				<a href="javascript:show_layer('2');" id="tab021" style="display: none;">포장 주문</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="javascript:show_layer('1');" id="tabA01"  class="a active">배달 주문</a></div>
			<div style="padding: 0 10px;"><a href="javascript:show_layer('2');" id="tabA02" class="a">포장 주문</a></div>
		</div>
		<!--  -->
		<div class="addressBox" id="tab0111" style="">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartPizza.jpg">밖에서 도미노 피자 먹고 싶을 땐?</span>
					<a href="#"><span style="float: right;color: #238ece; ">DOMINO SPOT 배달 ></span></a>
			</div>
		</div>
		<div class="addressBox" id="tab0222" style="display: none;">
			<div style="color: #238ece; padding: 0 30px;"><span><img src="/image/cartCar.jpg">도미노 드라이빙 픽업 서비스 이용</span>
					<a href="#"><span style="float: right;color: #238ece; ">이용안함 ></span></a>
			</div>
		</div>
		<!--  -->
		
		<form method="post" id="tab01">
			
			<div class="form_box" style="clear: both;">
				<div class="form_mini_box">
					<div class="form_left2"><input type="radio" name="address" id="radio01" checked> </div>
					<div class="form_left"><label for="radio01">경남 김해시 진영읍1111111</label><p>김해진영점</p> <span>055-342-3082</span></div>
					<div class="form_right"><a style="font-size: 28px;color: #ccc;">X</a></div>
				</div>
				
			</div>
		
		<div class="addressBox" >
			<div style="color: #238ece; padding: 0 30px;">
				<a href="/menu/list" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;text-align: center;">+ 배달주소 등록</a>
					<a href="#"><span style="float: right;color: orange; ">*배달 주소는 10개까지만 등록 가능합니다.</span></a>
			</div>
		</div>	
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
				해당 배달주소로 주문을 진행하시겠습니까?
				<div style="width: 15px;"> </div>
				<a href="/member/cart3" class="goToGift" style="background: #ff143c; text-align: center;">선택</a>
			</div>	
		</form>
		
		<!-- 11111111//22222222222 -->
		
		<form method="post" id="tab02" style="display: none;">
			
			<div class="form_box" style="clear: both;">
				<div class="form_mini_box">
					<div class="form_left2"><input type="radio" name="address" id="radio01" checked> </div>
					<div class="form_left"><label for="radio01">울산삼산점 매장<span>052-256-3083</span></label><p>울산삼산점</p> <span>울산 남구 돋질로 246,1층(달동)</span></div>
					<div class="form_right"><a style="font-size: 28px;color: #ccc;">X</a></div>
				</div>
				
			</div>
		
		<div class="addressBox" >
			<div style="color: #238ece; padding: 0 30px;">
				<a href="/menu/list" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;text-align: center;">+ 배달주소 등록</a>
					<a href="#"><span style="float: right;color: orange; ">*배달 주소는 10개까지만 등록 가능합니다.</span></a>
			</div>
		</div>	
			<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4; float: right;">
				해당 배달주소로 주문을 진행하시겠습니까?
				<div style="width: 15px;"> </div>
				<a href="/member/cart3" class="goToGift" style="background: #ff143c; text-align: center;">선택</a>
			</div>	
		</form>
		
	</div>
	<div style ="width: 13.5%"></div>
</div>


<script>


var b = $('.box_head a');		
	b.click(function(){
	b.removeClass("active");
	$(this).addClass("active");
});
 	function show_layer(tabNo){
	 
			
	document.all.tab01.style.display="none";
	document.all.tab011.style.display="none";
	document.all.tab0111.style.display="none";
	document.all.tab02.style.display="none";
	document.all.tab021.style.display="none";
	document.all.tab0222.style.display="none";

	 switch(tabNo)
	 {
	  case '1':
	  document.all.tab01.style.display=""; 
	  document.all.tab011.style.display=""; 
	  document.all.tab0111.style.display=""; 
	  break;
	  case '2':
	  document.all.tab02.style.display="";
	  document.all.tab021.style.display="";
	  document.all.tab0222.style.display="";
	  break;
	 } 
	
} 
</script>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>