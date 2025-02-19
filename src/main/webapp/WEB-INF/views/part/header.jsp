<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<c:set value="${pageContext.request.requestURI}" var="path"/>
<!DOCTYPE html>
  <header id="header" class="header fixed-top">

    <div class="topbar d-flex align-items-center">
      <div class="container d-flex justify-content-end justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
          <i class="bi bi-phone d-flex align-items-center d-none d-lg-block"><span>02-2222-3333</span></i>
          <i class="bi bi-clock ms-4 d-none d-lg-flex align-items-center"><span>월요일-토요일: 11:00 AM - 23:00 PM</span></i>
        </div>
        <div>
        <a class="cta-btn" href="${contextPath}/admin/list">회원목록</a>
        <a class="cta-btn" href="${contextPath}/admin/home">관리자화면</a>
		<c:if test="${empty user}">
			<a class="cta-btn" href="${contextPath}/auth/loginForm">로그인</a>
			<a class="cta-btn" href="${contextPath}/auth/joinForm">회원가입</a>
		</c:if>
		<c:if test="${not empty user}">
			<span>${user.name}님 환영합니다.</span>
			<a class="cta-btn" href="${contextPath}/auth/logout">로그아웃</a>
			<a class="cta-btn" href="${contextPath}/user/read/${user.username}">회원정보</a>
		</c:if>
		<c:choose>
		    <c:when test='${path eq "/catCafe/WEB-INF/views/index.jsp"}'>
		        <a href="#book-a-table" class="cta-btn">예약</a>
		    </c:when>
		    <c:otherwise>
		        <a href="${contextPath}/reservation" class="cta-btn">예약</a>
		    </c:otherwise>
		</c:choose>
        </div>
      </div>
    </div><!-- End Top Bar -->

    <div class="branding d-flex align-items-cente">

      <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="${contextPath}/index" class="logo d-flex align-items-center">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1 class="sitename">Delicious</h1>
        </a>

        <nav id="navmenu" class="navmenu">
          <ul>
            <li><a href="#hero" class="active">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#menu">Menu</a></li>
            <li><a href="#events">Events</a></li>
            <li><a href="#chefs">Chefs</a></li>
            <li><a href="#gallery">Gallery</a></li>
            <li class="dropdown"><a href="#"><span>Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
              <ul>
                <li><a href="#">Dropdown 1</a></li>
                <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="#">Deep Dropdown 1</a></li>
                    <li><a href="#">Deep Dropdown 2</a></li>
                    <li><a href="#">Deep Dropdown 3</a></li>
                    <li><a href="#">Deep Dropdown 4</a></li>
                    <li><a href="#">Deep Dropdown 5</a></li>
                  </ul>
                </li>
                <li><a href="#">Dropdown 2</a></li>
                <li><a href="#">Dropdown 3</a></li>
                <li><a href="#">Dropdown 4</a></li>
              </ul>
            </li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>

      </div>

    </div>

  </header>
  
  