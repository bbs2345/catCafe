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
<link href="${contextPath}/assets/css/reservation.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
<div class="">
	<div class="">
		아이디 : ${userResponse.username}
	</div>
	<div class="">
		이름 : ${userResponse.name}
	</div>
	<div class="">
		가입일 : ${userResponse.createDate}
	</div>
</div>

<div>
	<a href="#" class="">메인페이지</a>
	<a href="#" class="">목록</a>
	
	<a href="/user/update/#">회원정보 수정</a>
	<a href="${userResponse.username}">회원탈퇴</a>
</div>
	<!-- Section -->
</body>
</html>