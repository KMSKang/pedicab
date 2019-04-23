<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	text-align: center;
	color: black;
}

#td_title {
	color: black;
}

.btn-light {
	border-color: 1px solid silver;
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
					<h1 class="mb-3 bread">1:1 문의</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row" style="margin-bottom: 1%; margin-left: 1%;">
				<div class="col-10"></div>
				<div class="col-2">
					<a class="btn btn-outline-dark" href="questionWrite.do">문의하기</a>
				</div>
			</div>
			<!-- <a class="btn btn-outline-dark" href="noticeWrite.do">문의하기</a> -->

			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${questionList}" var="questionList">
						<tr>
							<td>${questionList.quseq}</td>
							<td><a href="questionInfo.do?quseq=${questionList.quseq}"
								id="td_title">${questionList.qutitle}</a></td>
							<td>${questionList.qudate}</td>
						</tr>
					</c:forEach>
				</tbody>
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
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>