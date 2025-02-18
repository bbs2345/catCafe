<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/reservation.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!-- Book A Table Section -->
	    <div class="reservation-overlay">
	<section id="book-a-table" class="book-a-table section">

		<!-- Section Title -->
		<div class="container section-title" data-aos="fade-up">
			<h2>Book A Table</h2>
			<div>
				<span>Book a</span> <span class="description-title">Table</span>
			</div>
		</div>
		<!-- End Section Title -->

		<div class="container">
			<div class="row g-0" data-aos="fade-up" data-aos-delay="100">
				<div class="col-lg-4 reservation-img"
					style="background-image: url(assets/img/reservation.jpg);"></div>
				<div class="col-lg-8 d-flex align-items-center reservation-form-bg"
					data-aos="fade-up" data-aos-delay="200">
					<form action="forms/book-a-table.php" method="post" role="form"
						class="php-email-form">
						<div class="row gy-4">
							<div class="col-lg-4 col-md-6">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="성명" required="">
							</div>
							<div class="col-lg-4 col-md-6">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="이메일" required="">
							</div>
							<div class="col-lg-4 col-md-6">
								<input type="text" class="form-control" name="phone" id="phone"
									placeholder="전화번호" required="">
							</div>
							<div class="col-lg-4 col-md-6">
								<input type="date" name="date" class="form-control" id="date"
									placeholder="예약 날짜" required="">
							</div>
							<div class="col-lg-4 col-md-6">
								<input type="time" class="form-control" name="time" id="time"
									placeholder="예약시간" required="">
							</div>
							<div class="col-lg-4 col-md-6">
								<input type="number" class="form-control" name="people"
									id="people" placeholder="# 인원" required="">
							</div>
						</div>
						<div class="form-group mt-3">
							<textarea class="form-control" name="message" rows="5"
								placeholder="Message"></textarea>
						</div>
						<div class="text-center mt-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">예약 요청이 전송되었습니다. 예약 확인을 위해 전화나
								이메일로 연락드리겠습니다. 감사합니다!</div>
							<button type="submit">예약하기</button>
						</div>
					</form>
				</div>
				<!-- End Reservation Form -->
				
			</div>
		</div>
	</section>
	<!-- /Book A Table Section -->
	
</body>
</html>