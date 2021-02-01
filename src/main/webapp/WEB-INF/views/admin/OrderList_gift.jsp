<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>
<table width=100% >
	<tr>
		<td width=100% align=center>
			<table width=75%>
				<tr>
					<td>NO</td>
					<td>아이디</td>
					<td>피자</td>
					<td>쿠폰번호</td>
					<td>쿠폰상태</td>
					<td>금액</td>
				</tr>
				<c:forEach var="gift" items="${gift }" varStatus="index">
				<tr>
					<td>${index.index+1 }</td>
					<td>${gift.user_id  }</td>
					<td>${gift.pizza }</td>
					<td>${gift.e_coupon }</td>
					<td>${gift.e_state }</td>
					<td>${gift.price_L }</td>
<!-- 					<form method="post"> -->
<!-- 						<td><input type="submit" value="입금확인" ></td> -->
<!-- 					</form> -->
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
</table>