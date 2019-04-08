<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<a class="btn btn-outline-dark" href="questionModify.do?quseq=${questionInfo.quseq}">수정</a> <a
						class="btn btn-outline-dark" href="/question/questionDelete.do?quseq=${questionInfo.quseq}">삭제</a>
				</div>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>이름</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${questionInfo.quseq}</td>
						<td>${questionInfo.qutitle}</td>
						<td>${questionInfo.qucontent}</td>
						<td>${questionInfo.quemail}</td>
						<td>${questionInfo.qudate}</td>
					</tr>
				</tbody>
			</table>

			<br> <br>
			<hr>
			<br> <br>

			<h1>관리자 답변</h1>

			<table class="table table-hover">

				<tr>
					<th>번호</th>
					<th>내용</th>
					<th>이름</th>
					<th>날짜</th>
				</tr>

				<c:forEach items="${answerList}" var="answerList">
					<c:if test="${answerList.quseq == questionInfo.quseq}">
						<tr>
							<td>${answerList.naseq}</td>
							<td>${answerList.nacontent}</td>
							<td>${answerList.naname}</td>
							<td>${answerList.nadate}</td>
						</tr>
					</c:if>
				</c:forEach>

			</table>
		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>