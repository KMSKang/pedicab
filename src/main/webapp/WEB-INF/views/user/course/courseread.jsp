<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document)
			.ready(
					function() {

						var c = 0;

						$("#Heart")
								.click(
										function() {

											if (c == 0) {
												if (confirm("즐겨찾기에 추가하시겠습니까?")) {
													$("#Heart img")
															.attr("src",
																	"../resources/img/heart/HeartRed.png")
													$
															.ajax({// ajax
																url : 'http://localhost/favoriteRegister', // 요청 보내기
																method : 'POST',
																data : { // Controller로 보낼 데이터 (Favorite에 있는 형식으로 보내야돼)
																	faemail : 'aaa@naver.com',
																	falink : '<a href="courseReservation.do"><img	src="../resources/img/course/course1.jpg"></a>'
																}
															})
													return ++c;
												}
											} else {
												if (confirm("즐겨찾기에 삭제하시겠습니까?")) {
													$("#Heart img")
															.attr("src",
																	"../resources/img/heart/HeartWhite.png")
													$
															.ajax({
																url : 'http://localhost/favoriteDelete',
																method : 'GET',
																data : {
																	falink : '<a href="courseReservation.do"><img	src="../resources/img/course/course1.jpg"></a>'
																}
															})
													return --c;
												}
											}
										})
					});
</script>
<%@ include file="../../commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="../../commons/Header.jsp"%>
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/resources/imagesu/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">CourseInfo</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row block-9">
				<div class="col-md- order-md-last d-flex">
					<form class="bg-light p-5 contact-form">
						<div class="form-group">
							<img src="/uploadFile/coursePhoto/${course.cimg}" id="cimg"
								style="width: 650px; heigth: 600px;">
						</div>
						<hr class="col-6-flex">
						<div class="form-group">
							<label style="color: black">코스명</label>
							<p id="cname">${course.cname }</p>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">코스소개</label>
							<p id="cinfo">${course.cinfo }</p>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">코스가격</label>
							<p id="cprice">${course.cprice }</p>
						</div>
					</form>
				</div>
				<div class="col-md- order-md-last d-flex">
					<form class="bg-black p-5">
						<div class="form-group">
							<h1>예약하기</h1>
						</div>
						<hr class="col-6-flex">
						<div class="form-group">
							<label style="color: black" for="rtime">시간선택</label> <br> <select
								name="rtime" id="rtime" class="form-control">
								<option value="10:00">10:00~11:00</option>
								<option value="11:00">11:00~12:00</option>
								<option value="12:00">12:00~13:00</option>
								<option value="13:00">13:00~14:00</option>
								<option value="14:00">15:00~16:00</option>
								<option value="15:00">17:00~18:00</option>
							</select>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black" for="rbank">환불은행</label> <input
								type="text" class="form-control" name="rbank" id="rbank">
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">계좌번호</label><input type="text"
								class="form-control" name="rbank" id="rbank">
						</div>
						<div class="form-group">
							<label style="color: black">요청사항</label><input type="text"
								class="form-control" name="rmemo" id="rmemo">
						</div>
						<div class="form-group">
						 <input type="submit" value="에약하기" class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../../commons/footer.jsp"%>
</body>
</html>