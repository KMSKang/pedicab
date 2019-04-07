<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="../../commons/Header.jsp"%>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('/resources/imagesu/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
				data-scrollax-parent="true">
				<div class="col-md-7 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">CourseList</h1>
				</div>
			</div>
		</div>
	</div>
	<section class="ftco-section ftco-no-pb ftco-no-pt">
		<div class="container">
		<div class="row">
		<h2 class="mb-3">Chose Course</h2>
		</div>
			<div class="row">
		<c:forEach items="${list}" var="course">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<div class="img">
							<img src="/uploadFile/coursePhoto/${course.cimg}"
								class="img-fluid" alt="Colorlib Template">
						</div>
						<div class="text">
							<h4 class="price">${course.cprice}</h4>
							<h3>
								<a href="/user/course/courseread?cseq=${course.cseq}">${course.cname}</a>
							</h3>
						</div>
						<a href="/uploadFile/coursePhoto/${course.cimg}"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
		</c:forEach>
			</div>
		</div>
	</section>
	<%@include file="../../commons/footer.jsp"%>
</body>
</html>