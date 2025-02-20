<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gallery</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/sub.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
		<!-- Gallery Section -->
    <section id="gallery" class="gallery section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>갤러리</h2>
        <div><span>냥냥카페</span> <span class="description-title">갤러리</span></div>
      </div><!-- End Section Title -->

      <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
		<div class="row g-0">
		  <c:forEach var="i" begin="11" end="18">
		    <div class="col-lg-3 col-md-4">
		      <div class="gallery-item">
		        <a href="assets/img/gallery/gallery-${i}.jpg" class="glightbox" data-gallery="images-gallery">
		          <img src="assets/img/gallery/gallery-${i}.jpg" alt="" class="img-fluid">
		        </a>
		      </div>
		    </div><!-- End Gallery Item -->
		  </c:forEach>
		</div>
      </div>

    </section><!-- /Gallery Section -->
	<!-- Section -->
</body>
</html>