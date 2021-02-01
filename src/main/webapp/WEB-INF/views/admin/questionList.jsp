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
					<td>제목</td>
					<td>등록일</td>
					<td>처리상태</td>
				</tr>
					<c:forEach var="question" items="${question }" varStatus="index">
						<c:choose>
							<c:when test="${question.state eq '답변전' }">
								<tr>
									<td>${index.index+1 }</td>
									<td>${question.user_id }</td>
									<td><a href="/admin/answer?uid=${question.uid }">${question.title }</a></td>
									<td>${question.signdate }</td>
									<td>${question.state }</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td>${index.index+1 }</td>
									<td>${question.user_id }</td>
									<td><a href="/admin/questionView?uid=${question.uid }">${question.title }</a></td>
									<td>${question.signdate }</td>
									<td>${question.state }</td>
								</tr>
							</c:otherwise>
						</c:choose>
				</c:forEach>
				
			</table>
		
		</td>
	</tr>

</table>
