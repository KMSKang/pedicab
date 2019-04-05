<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>공지사항(메인)</title>
<style>
table {
	text-align: center;
	color: black;
}

#a_management {
	color: black;
}

.col-1{
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
					<h1 class="mb-3 bread">공지사항</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">

		<div class="container">

			<div class="row">
				<div class="col-10">col-8</div>
				<div class="col-2">
					<a href="noticeWrite.do" class="btn btn-outline-secondary"
						role="button">글쓰기</a>
				</div>
			</div>
			<table class="table table-hover">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>기타</th>
				</tr>
				<c:forEach items="${List}" var="List">
					<tr>
						<td>${List.noseq}</td>
						<td>${List.notitle}</td>
						<td>${List.nodate}</td>
						<td><a href="noticeInfo.do?noseq=${List.noseq}"
							id="a_management">관리</a>
					</tr>
				</c:forEach>
			</table>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="../header/footer.jsp"%>
</body>
</html>
