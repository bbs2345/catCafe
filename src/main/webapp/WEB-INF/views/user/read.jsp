<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/user.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
	<div class="userRead-overlay">
		<div class="userRead">
			<div>
				<h3>회원정보 상세보기</h3>
			</div>
			
			<div>
				<div>아이디 : ${userResponse.username}</div>
				<div>비밀번호 : ${userResponse.password}</div>
				<div>이름 : ${userResponse.name}</div>
				<div>이메일 : ${userResponse.email}</div>
				<div>전화번호 : ${userResponse.phone}</div>
				<div>등급 : ${userResponse.role}</div>
			</div>

			<a href="${contextPath}/index">메인페이지</a>

			<c:if test="${userResponse.role == 'ROLE_ADMIN'}">
				<a href="${contextPath}/admin/list">목록</a>
			</c:if>
			<a href="${contextPath}/user/update/${userResponse.username}">회원정보 수정</a> 
			<a href="${userResponse.username}">회원탈퇴</a>
		
		</div>
	</div>
	<!-- Section -->
</body>
</html>