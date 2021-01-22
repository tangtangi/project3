<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<c:if test="${param.type == 'N' }"><title>Domino's NEWS!!</title></c:if>
<c:if test="${param.type == 'P' }"><title>Report NEWS!!</title></c:if>
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
	    width: 32.3%;
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
	.form_input{
	    border: 1px solid lightgray;
	    height: 30px;
	}
	.btn{
	    width: 26px;
	    background: white;
	    border: 0px solid black;
	    outline: 0;
}

</style>
<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>공지사항</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/bbs/newsList?type=N">공지사항</a> > 
				<c:if test="${param.type == 'N' }"><a href="/moreList/bbs/newsList?type=N">도미노 뉴스</a></c:if>
				<c:if test="${param.type == 'P' }"><a href="/moreList/bbs/newsList?type=P">보도자료</a></c:if>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<c:if test="${param.type == 'N' }"><a href="/moreList/bbs/newsList?type=N"><b>도미노 뉴스</b></a></c:if>
				<c:if test="${param.type == 'P' }"><a href="/moreList/bbs/newsList?type=N">도미노 뉴스</a></c:if>
			</div>
			<div style="padding: 0 10px;">
				<c:if test="${param.type == 'N' }"><a href="/moreList/bbs/newsList?type=P">보도자료</a></c:if>
				<c:if test="${param.type == 'P' }"><a href="/moreList/bbs/newsList?type=P"><b>보도자료</b></a></c:if>
			</div>
		</div>
		<div style="display: flex;justify-content: center;padding: 30px 0 0 0 ;" >
			<select style="border: 1px solid lightgrey;">
				<option>제목</option>
				<option>내용</option>
				<option>제목+내용</option>
			</select>
			<input class="form_input" style="margin: 0 10px;">
			<button class="btn" onclick="location.href='/'"><img style="width: 30px; cursor: pointer;" alt="a" src='/image/Magnifier.png'></button>
			<input type="image" src="/image/Magnifier.png" style="width: 30px; cursor: pointer; outline: 0;" alt="a" >
		</div>
		<div class="box_head" style="display: flex;justify-content: flex-end;" >
			<div style= "float: right; font-size: 15px; color: #888;"> 총 ${n }건 </div>
		</div>
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">번호</div>
				<div class="listHeader"  style="width: 65%;">제목</div>
				<div class="listHeader"  style="width: 15%;">등록일</div>
				<div class="listHeader"  style="width: 10%;">조회</div>
			</div>
			<div class="listHeaderContainer" >
				<div class="listHeader" style="width: 10%;">123</div>
				<div class="listHeader"  style="width: 65%;">보온백 이벤트 당첨자 안내</div>
				<div class="listHeader"  style="width: 15%;">2020-10-14</div>
				<div class="listHeader"  style="width: 10%;">2603</div>
			</div>
		</div>
		
		<!-- ------------------------------ -->
	
		<div>
			<div class="listHeaderContainer" >
				<div class="listHeader2" style="width: 30%;"></div>
				<div class="listHeader2"  style="width: 10%;">이전페이지</div>
				<div class="listHeader2"  style="width: 20%;">1 2 3</div>
				<div class="listHeader2"  style="width: 10%;">다음페이지</div>
				<div class="listHeader2"  style="width: 30%;"></div>
			</div>
		</div>
		
	</div>
		
	<div style ="width: 13.5%"></div>
</div>

<style>
	.listHeaderContainer{
		display: flex;
	}
	.listHeader{
		text-align: center;
	    border-bottom: 1px solid lightgray;
	    padding: 10px 0;
	}
	.listHeader2{
		text-align: center;
	    padding: 10px 0;
	}
		
</style>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>