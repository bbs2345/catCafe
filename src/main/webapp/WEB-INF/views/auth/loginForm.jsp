<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
  <!-- Main CSS File -->
  	<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
  	<link href="${contextPath}/assets/css/auth.css" rel="stylesheet">
</head>
<body>
<%@ include file="../part/page_tool.jsp" %>

<!--    <div class="container"> -->
<!--       <div class="login-wrapper"> -->
<!--          <div class="login-image"> -->
<!--             <div class="image-overlay"> -->
<!--                <div class="image-text"> -->

<!--                </div> -->
<!--             </div> -->
<!--          </div> -->
         
         <div class="loginForm-overlay">
            <h2 class="login-title">로그인</h2>
            
            <form action="${contextPath}/auth/login" method="post">

               <div class="form-group">
                  <label for="id">아이디</label>
                  <input type="text" class="form-control" id="id" name="username" required>
               </div>
               <div class="form-group">
                  <label for="pw">비밀번호</label>
                  <input type="password" class="form-control" id="pw" name="password" required>
               </div>
               <button type="submit" id="loginForm-btn">로그인</button>
               <a id="joinForm-btn" href="${contextPath}/auth/joinForm">회원가입</a>
            </form>
		</div>
		
<!--       </div> -->
<!--    </div> -->
</body>
</html>