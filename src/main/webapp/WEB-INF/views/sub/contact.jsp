<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/sub.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
	<!-- Contact Section -->
	<section id="contact" class="contact section">

		<!-- Section Title -->
		<div class="container section-title" data-aos="fade-up">
			<h2>문의사항</h2>
			<div>
				<span class="description-title">문의하기</span>
			</div>
		</div>
		<!-- End Section Title -->

<!-- 		<div class="mb-5"> -->
<!-- 			<iframe style="width: 100%; height: 400px;" -->
<!-- 				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.517192417229!2d126.849538!3d37.550978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9d2ea6b6c4d1%3A0x5e1c0a17a2a5fdc!2z7ISc7Jq47Yq567OE7IucIOyVhOuqqCDsoJXroZwzMDI!5e0!3m2!1sko!2skr!4v1707654321000" -->
<!-- 				frameborder="0" allowfullscreen=""> </iframe> -->
<!-- 		</div> -->
		<!-- End Google Maps -->

		<div class="container" data-aos="fade">

			<div class="row gy-5 gx-lg-5">

				<div class="col-lg-4">

					<div class="info">
						<h3>문의사항</h3>
						<p>
							고양이 카페 방문 및 예약 관련 문의. <br>입장료 및 이용 시간 문의.<br>카페 내 시설 및
							서비스 문의.<br>카페 관련 피드백 및 제안.
						</p>
						<div class="info-item d-flex">
							<i class="bi bi-geo-alt flex-shrink-0"></i>
							<div>
								<h4>위치</h4>
								<p>서울 강서구 화곡로 302 강서구청</p>
							</div>
						</div>
						<!-- End Info Item -->

						<div class="info-item d-flex">
							<i class="bi bi-envelope flex-shrink-0"></i>
							<div>
								<h4>이메일</h4>
								<p>info@example.com</p>
							</div>
						</div>
						<!-- End Info Item -->

						<div class="info-item d-flex">
							<i class="bi bi-phone flex-shrink-0"></i>
							<div>
								<h4>전화번호</h4>
								<p>02-2222-3333</p>
							</div>
						</div>
						<!-- End Info Item -->

					</div>

				</div>

				<div class="col-lg-8">
					<form action="forms/contact.php" method="post" role="form"
						class="php-email-form">
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="성명" required="">
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="이메일" required="">
							</div>
						</div>
						<div class="form-group mt-3">
							<input type="text" class="form-control" name="phoneNumber"
								id="phoneNumber" placeholder="연락처" required="">
						</div>
						<div class="form-group mt-3">
							<textarea class="form-control" name="message" placeholder="상세 내용"
								required=""></textarea>
						</div>
						<div class="my-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your message has been sent. Thank
								you!</div>
						</div>
						<div class="text-center">
							<button type="submit">Send Message</button>
						</div>
					</form>
				</div>
				<!-- End Contact Form -->

			</div>

		</div>

	</section>
	<!-- /Contact Section -->
	<!-- Section -->
</body>
</html>