<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<style>
.write1 {
	float: left;
}

.write2 {
	float: left;
	margin-left: 10px;
}

table {
	text-align: center;
	color: black !important;
}

.btn-primary {
	background: transparent !important;
	border: 1px solid silver !important;
	color: black !important;
}

#notitle::placeholder{
	color: #666;
}

#nocontent::placeholder{
	color: #666;
}

.ftco-section {
	padding: 50px 10px 150px 10px !important;
}
</style>

<%@ include file="../commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="../commons/Header.jsp"%>
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/resources/imagesu/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">공지사항</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container">
			<label style="color:black;">제목　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　${Info.nodate}</label>
			<input class="form-control" id ="notitle" type="text" placeholder="${Info.notitle}" readonly>
				<label style="margin-top: 3%; color:black;">내용</label>
			<textarea id="nocontent" cols="50" rows="20" class="form-control" placeholder="${Info.nocontent}" readonly></textarea>
		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>
