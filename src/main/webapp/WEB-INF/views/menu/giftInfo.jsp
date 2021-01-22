<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>  
<style>
	.order{
		background-color:#ff143c;
		text-align:center;
		height:65px;
		border:1px solid #ff143c;
		color:white;
		font-size:18px;
		width:200px;
	}
	.order>a{color:white;text-decoration: none;}
</style>  
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >상품권 선물</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73%>
			<table border=0>
				<tr>
					<td class="submenu_a" align=left width=185px><a href="/menu/gift">모바일상품권(도미노콘) </a></td>
					<td class="submenu_b" align=center  width=170px><a href="/menu/giftInfo" >상품권 사용 안내</a></td>
				</tr>
			</table>
		</td>
		<td  width=13.5% ></td>
	</tr>
</table>
<table width=100% >
	<tr>
		<td width=13.5% ></td>
		<td width=73% align=center><img src="/image/gift.jpg" width=100%></td>
		<td width=13.5% ></td>
	</tr>
</table>
<table border=0 align=center width=100%>
	<tr>
		<td width=44%></td>
		<td width=12% class="order"><a href="/menu/list">주문하기</a></td>
		<td width=44%></td>
	</tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>