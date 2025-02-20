<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chefs</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/sub.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

<!-- Chefs Section -->
    <section id="chefs" class="chefs section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>주방장</h2>
        <div><span class="description-title">주방장</span></div>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-5">

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <div class="pic"><img src="assets/img/chefs/chefs-11.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>말광냥이</h4>
                <span>총주방장</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <div class="pic"><img src="assets/img/chefs/chefs-12.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>조냥단</h4>
                <span>부주방장</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <div class="pic"><img src="assets/img/chefs/chefs-13.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>시크냥</h4>
                <span>요리사</span>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

        </div>

      </div>

    </section><!-- /Chefs Section -->

</body>
</html>