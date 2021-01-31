<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>
<table style="width:100%" >
	<tr>
		<td width=100% align=center>
			<table style="width:75%">
				<tr>
					<td>NO</td>
					<td>cart_id</td>
					<td>user_id</td>
					<td>order_uid</td>
					<td>name</td>
					<td>price</td>
					<td>count</td>
					<td>state</td>
					<td>dough_name</td>
					<td>dough_price</td>
					<td>address_uid</td>
				</tr>
				<c:forEach var="list" items="${order }" varStatus="status">
				<tr>
					<td>${status.index }</td>
					<td>${list.cart_id }</td>
					<td>${list.user_id }</td>
					<td>${list.order_uid }</td>
					<td>${list.name }</td>
					<td>${list.price }</td>
					<td>${list.count }</td>
					<td>${list.state }</td>
					<td>${list.dough_name }</td>
					<td>${list.dough_price }</td>
					<td>${list.address_uid }</td>
				</tr>
				</c:forEach>
			</table>
		
		</td>
	</tr>
</table>
<%@ include file="/WEB-INF/views/include/admin_footer.jsp" %>
