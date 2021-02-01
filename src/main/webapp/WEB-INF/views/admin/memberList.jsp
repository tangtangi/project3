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
					<td>이름</td>
					<td>연락처</td>
					<td>이메일</td>
					<td>생일</td>
					<td>주소</td>
					<td>등급</td>
				</tr>
				<c:forEach var="member" items="${member }" varStatus="index">
				<tr>
					<td>${index.index+1 }</td>
					<td>${member.id }</td>
					<td>${member.name }</td>
					<td>${member.phone }</td>
					<td>${member.email }</td>
					<td>${member.birth }</td>
					<td>${member.address }</td>
					<td>${member.level }</td>
				</tr>
				</c:forEach>
			</table>
		
		</td>
	</tr>

</table>
