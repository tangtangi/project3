<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %> 
<style>
	.line{border-bottom:2px solid black;}
</style>   
<table 	width=100% height=115px>
	<tr>
		<td  width=13.5% ></td>
		<td class="menuname" width=73% >이벤트&middot;제휴</td>
		<td width=13.5% ></td>
	</tr>
	<tr>
		<td  width=13.5% ></td>
		<td class="submenu" width=73% >
			<table border=0>
				<tr>
					<td class="submenu_a" width=60px><a href="/menu/event" >이벤트</a></td>
					<td class="submenu_b" align=center  width=140px><a href="/menu/eventInfo" style="color:black;"><b>할인안내</b></a></td>
				</tr>
			</table>
		</td>
		<td width=13.5% ></td>
	</tr>
</table>
<table width=100% border=0>
	<tr>
		<td width=13.5% rowspan=5></td>
		<td width=73%  style="text-align:center;border-bottom:1px solid #dddddd;" height=165px >
			<table width=100% align=center>
				<tr><td height=50px style="font-size:26px;color:red;font-weight:bold;">도미노를 더욱 더 즐겁게 이용하는 방법!</td></tr>
				<tr><td style="font-size:20px;">다양한 할인 혜택으로 도미노피자를 더 실속 있게 즐기세요!</td></tr>
			</table>
		</td>
		<td width=13.5% rowspan=5></td>
	</tr>
	<tr>
		<Td width=73% class="line" align=center><img src="/image/discount1.PNG"></Td>
	</tr>
	<tr>
		<Td width=73% class="line" align=center><img src="/image/discount2.PNG"></Td>
	</tr>
	<tr>
		<Td width=73% class="line" align=center><img src="/image/discount3.PNG"></Td>
	</tr>
	<tr>
		<Td width=73% ><img src="/image/discount4.PNG"></Td>
	</tr>
</table>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>