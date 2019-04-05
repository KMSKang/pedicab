<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>공지사항(상세)</title>

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

<%@ include file="../header/hdcss.jsp"%>
</head>
<body>


	<%@ include file="../header/Header.jsp"%>


	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">공지사항(상세)</h1>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section bg-light">
	
	
		<div class="write1">
			<a href="noticeModify.do?noseq=${Info.noseq}" class="btn btn-outline-secondary" role="button">수정</a>
		</div>

		<div class="write2">
			<a href="noticeDelete.do?noseq=${Info.noseq}" class="btn btn-outline-secondary" role="button">삭제</a>
		</div>

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

	</section>

	<%@ include file="../header/footer.jsp"%>
</body>
</html>
