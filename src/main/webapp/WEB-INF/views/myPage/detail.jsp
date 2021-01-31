<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<hr>
<c:forEach	items="${order }" var="order">
	<div>이름 : ${order.name } / 가격 : ${order.price } / 이름 : ${order.name }</div>
	<hr>
</c:forEach>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>