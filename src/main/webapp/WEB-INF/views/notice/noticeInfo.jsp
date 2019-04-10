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
	color: black;
}

.btn-primary {
	background: transparent !important;
	border: 1px solid silver !important;
	color: black !important;
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


			<label>제목</label> <input class="form-control" type="text" placeholder="${Info.notitle}" readonly>

			<label style="margin-top:3%;">내용</label> <textarea name="qucontent" id="message" cols="50" rows="20" class="form-control" placeholder="${Info.nocontent}" readonly></textarea>




			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>
				<tr>
					<td>${Info.noseq}</td>
					<td>${Info.notitle}</td>
					<td>${Info.nocontent}</td>
					<td>${Info.nodate}</td>
				</tr>
			</table>
		</div>
	</section>

	<%@ include file="../commons/footer.jsp"%>
</body>
</html>
