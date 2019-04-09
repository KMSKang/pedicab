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

#reviewImg {
	width: 200px;
	height: 200px;
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
					<h1 class="mb-3 bread">리뷰</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<a href="commentWrite.do?reseq=${reviewInfo.reseq}">답글</a>
			<div class="row" style="margin-bottom: 1%; margin-left: 1%;">
				<div class="col-10"></div>
				<div class="col-2">
					<a class="btn btn-outline-dark"
						href="reviewModify.do?reseq=${reviewInfo.reseq}">수정</a> <a
						class="btn btn-outline-dark"
						href="reviewDelete.do?reseq=${reviewInfo.reseq}">삭제</a>
				</div>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>사진</th>
						<th>리뷰</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${reviewInfo.reseq}</td>
						<td>${reviewInfo.reemail}</td>
						<td><c:forEach items="${reviewList}" var="reviewList">
								<c:if test="${reviewInfo.reseq == reviewList.reseq}">
									<img src="/uploadFile/reviewPhoto/${reviewList.rephoto}"
										id="reviewImg">
								</c:if>
							</c:forEach></td>
						<td>${reviewInfo.recontent}</td>
						<td>${reviewInfo.redate}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>