<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/reservation.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
<div class="adminList-overlay">
	
	<div class="admin_userList">
	<div>
		<h3>회원목록</h3>
	</div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto" varStatus="status">
					<tr>
						<td>${dto.id}</td>
						<td><a href="${dto.username}">${dto.username}</a></td>
						<td>${dto.name}</td>
						<td>${dto.email}</td>
						<td>${dto.phone}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>	
	<!-- Section -->
</body>
</html>