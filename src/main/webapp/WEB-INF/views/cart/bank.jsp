<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>상품권 결제</title>
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
	.box_head{
		clear: both;
	    display: flex;
	    /* border-bottom: 2px solid black; */
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
	    width: 250px;
	    display: inline-block;
	    height: 60px;
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
		/* border-top: 1px solid black; */
	}
	.form_mini_box{
		display: flex;
		min-height: 100px;
	}
	.form_left{
		padding : 0 3%; 
		align-self: center;
		min-width: 80%;
	}
	.form_left2{
		padding-left : 2%; 
		align-self: center;
	}
	.form_right{
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
		font-size:18px;
		/* height: 70px; */
	    line-height: 70px;
	    background: #f5f5f5;
	   
	}
	.aModi{
	    font-size: 16px;
	    color: #888;
	    display: inline-block;
	    border: 1px solid #888;
		border-radius: 50% 50% 50% 50% /100% 100% 100% 100%;
	    width: 48px;
	    height: 30px;
	    text-align: center;
	    line-height: 30px;
	}
	.littleHeader{
		display: flex;
	    height: 50px;
	    line-height: 50px;
	    justify-content: center;
	    border-bottom: 1px solid lightgray;
	    width: 100%;
	}
	.littleContent{
		display: flex;
	    min-height: 50px;
	  /*   line-height: 50px; */
	/*     justify-content: center; */
	    border-bottom: 1px solid lightgray;
	    width: 100%;
	}
	.little{
		text-align: center;
		line-height: 5;
	    display: flex;
	    /* justify-content: center; */
	}
	.little p{
		/* display: inline-block; */
		line-height: 1.5;
		
	}
	 .content{
		margin: 15px 10px;
	}
	
	.discount{
	    width: 350px;
	    height: 57px;
	    color: white;
	    background-color: black;
	    font-size: 18px;
	    text-align: center;
	}
	.paybox{
	
		border: 1px solid #c1c1c1;
	    width: 130px;
	    height: 50px;
	    text-align: center;
	}
	.money{
		text-align: center;
	    font-size: 18px;
	}
	.money2{
		
	    text-align: center;
		font-size: 34px;
		font-weight: bold;
	}
	.money3{
		
	    text-align: center;
	    font-size: 55px;
	}
	
</style>
<script>

</script>
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >상품권 결제 무통장입금</td>
		<td width=13.5% ></td>
	</tr>
</table>
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<div style="display: flex;   ">
	<div style ="width: 13.5%"></div>
	<div style ="width: 73%">
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox" id="tab0111" style="border-top:1px solid black;" >
			<div style="padding: 0 30px;"><span>무통장입금</span></div>
		</div>
		<div class="form_box" style="clear: both;" >
			<table style="margin-left: 80px;margin-top: 55px;margin-bottom: 55px;">
				<tr>
					<td>신한은행 110-165-66954 강우탁</td>
				</tr>
			</table>
		</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div class="addressBox" id="tab0111" style="border-top:1px solid black;">
			<div style="padding: 0 30px;"><span>최종 결제 금액</span></div>
		</div>
		<div class="form_box" style="clear: both;">
			<table style="margin-left: 30px; margin-top: 20px;margin-bottom: 20px;" width=100%>
				<tr>
					<td align=center  width=75% style="height: 123px;vertical-align: bottom;">
						<table align=center width=50%>
							<tr>
								<td class="money">총 결제 금액</td>
							</tr>
							<tr>
								<td class="money2"><fmt:formatNumber type="number" maxFractionDigits="3" value="${total_price}" />원</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		<div style="display: flex;justify-content: center; padding: 40px 40px 40px 0; line-height: 4;">
			<div style="width: 15px;"> </div>
			<a href="bank_last" class="goToGift" style="color: white;background: #ff143c; text-align: center;" >입금 후 클릭</a>
		</div>	
	</div><!-- 중간폭 -->
	<div style ="width: 13.5%"></div>
</div>




<%@ include file="/WEB-INF/views/include/footer.jsp" %>