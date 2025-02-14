<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />    


<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="${contextPath}/assets/img/favicon.png" rel="icon">
  <link href="${contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Satisfy:wght@400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="${contextPath}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${contextPath}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="${contextPath}/assets/css/main.css" rel="stylesheet">
  
	<style>
	/* 이미지가 Hero 위로 오지 않도록 하기 위해 z-index 설정 */
	.carousel-item img {
		z-index: -1; /* 이미지가 배경으로만 표시되도록 설정 */
	}
	</style>
</head>

<body class="index-page">

<%@ include file="header.jsp" %>

  <main class="main">

<!--     Hero Section -->
		<section id="hero" class="hero section dark-background">

			<div id="hero-carousel" class="carousel slide carousel-fade"
				data-bs-ride="carousel" data-bs-interval="5000">

				<div class="carousel-item active">
					<img src="${contextPath}/assets/img/hero-carousel/hero-carousel-1.jpg" alt="">
					<div class="carousel-container"></div>
				</div>
				<div class="carousel-item">
					<img src="${contextPath}/assets/img/hero-carousel/hero-carousel-2.jpg" alt="">
					<div class="carousel-container"></div>
				</div>

				<div class="carousel-item">
					<img src="${contextPath}/assets/img/hero-carousel/hero-carousel-3.jpg" alt="">
					<div class="carousel-container"></div>
				</div>

				<a class="carousel-control-prev" href="#hero-carousel" role="button"
					data-bs-slide="prev"> 
					<span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
				</a> 
				<a class="carousel-control-next" href="#hero-carousel"
					role="button" data-bs-slide="next"> 
					<span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
				</a>
				<ol class="carousel-indicators"></ol>
			</div>
		</section>
		<!--     /Hero Section -->
<!-- ======================================================= -->


  </main>

  <%@ include file="footer.jsp" %>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="${contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${contextPath}/assets/vendor/php-email-form/validate.js"></script>
  <script src="${contextPath}/assets/vendor/aos/aos.js"></script>
  <script src="${contextPath}/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${contextPath}/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="${contextPath}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${contextPath}/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="${contextPath}/assets/js/main.js"></script>
<script type="text/javascript">

</script>
</body>
</html>
