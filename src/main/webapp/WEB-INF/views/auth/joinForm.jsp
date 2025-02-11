<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js" type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

  <!-- Main CSS File -->
  <link href="../assets/css/main.css" rel="stylesheet">
</head>
<body>
<%@ include file="../part/header.jsp" %>
<div>
<form action="${contextPath}/auth/save" method="post">
	<div>
		아이디 : <input name="username">
	</div>
	
	<div>
		비번 : <input name="password">
	</div>
	
	<div>
		이름 : <input name="name">
	</div>
	
	<div>
		이메일 : <input name="email">
	</div>
	
	<div>
		전화번호 : <input name="phone">
	</div>
	<div>
		<button>등록</button>
	</div>
</form>
</div>
</body>
</html>
<%@ include file="../part/footer.jsp" %>