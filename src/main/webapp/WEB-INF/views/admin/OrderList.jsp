<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/admin_header.jsp" %>
<style>

</style>
<table width=100% >
	<tr>
		<td width=100% align=center>
			<table width=75%>
				<tr>
					<td>NO</td>
					<td>종류</td>
					<td>아이디</td>
					<td>이름</td>
					<td>연락처</td>
					<td></td>
				</tr>
				<c:forEach var="member" items="${member } var="">
				<tr>
					<td>${index.index+1 }</td>
					<td>종류</td>
					<td>${member.id }</td>
					<td>${member.name }</td>
					<td>${member.phone }</td>
					<td>금액</td>
					<form method="post">
						<td><input type="submit" value="입금확인" ></td>
					</form>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
</table>
