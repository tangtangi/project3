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
				<h1 >장바구니</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/member/cart">장바구니</a>
				
			</div>
		</div>
		
		
	</div>
	<div style ="width: 13.5%"></div>
</div>
<div style="display: flex;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%; text-align: center; color: #888;">
		<div><img src="/image/cartEmpty.png"></div>
		<div>
			<p style="font-size: 35px;">장바구니가 비어있습니다.</p><br>
			<p style="font-size: 14px;">도미노피자의 맛있는 메뉴를 마음껏 골라 담으세요</p><br><br>
		</div>	
		<div><a href="/menu/list" style="display:inline-block; color: #888;background: #fff;width: 150px;height: 53px;line-height:53px; border: 1px solid lightgray;outline: 0px;">+ 메뉴 추가하기</a></div><br><br>
		<div><img src="/image/cartNotice.jpg"></div>
	</div>
	<div style ="width: 13.5%"></div>
</div>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>