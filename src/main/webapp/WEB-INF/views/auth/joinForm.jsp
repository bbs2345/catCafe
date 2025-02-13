<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>회원가입화면</title>
  <!-- Main CSS File -->
  <link href="../assets/css/main.css" rel="stylesheet">
  <link href="../assets/css/auth.css" rel="stylesheet">
</head>
<body class="index-page">

<%@ include file="../part/page_tool.jsp" %>

    <!-- joinForm-overlay -->
    <div class="joinForm-overlay">
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
                <button id="joinForm-btn">등록</button>
            </div>
        </form>
    </div>
    
</body>
</html>
