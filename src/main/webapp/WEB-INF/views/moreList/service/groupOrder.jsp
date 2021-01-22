<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<title>Group Order!!</title>
<style>
	.box_head{
		clear: both;
	    display: flex;
	    border-bottom: 2px solid black;
	    padding: 10px 0px;
	}
	.grOdContent{
	    text-align: center;
	}
	div a{
		color: black;
	}
</style>

<div style="display: flex; margin-top: 30px;">
	<div style ="width: 13.5%"></div>
	
	<div style ="width: 73%">
		<div style="display: flex;justify-content: space-between;align-items: baseline;">
			<div  style="float:left">
				<h1>도미노 서비스</h1>
			</div>
			<div style="float:rigth">
				<a href="/">홈</a> > 
				<a href="/moreList/service/mania">도미노 서비스</a> > 
				<a href="/moreList/service/groupOrder">단체주문 서비스</a>
				
			</div>
		</div>
		<div class="box_head" >
			<div style="  border-right: 1px solid black;   padding-right: 10px;">
				<a href="/moreList/service/mania">매니아 혜택</a></div>
			<div style="padding: 0 10px;"><a href="/moreList/service/groupOrder"><b>단체주문 서비스</b></a></div>
		</div>
		<div class="grOdContent">
			<div><img src="/image/groupOrder1.png"></div>
			<div><img src="/image/groupOrder2.png"></div>
		</div>
		
		
	</div>
	<div style ="width: 13.5%"></div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>