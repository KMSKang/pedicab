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
	width: 400px;
	height: 400px;
}

#reemail::placeholder {
	color: #666;
}

recontent::placeholder {
	color:
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
					<h1 class="mb-3 bread">리뷰</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">

			<div class="row">
				<div class="col-4"></div>
				<div class="col-8">
					<c:forEach items="${reviewList}" var="reviewList">
						<c:if test="${reviewInfo.reseq == reviewList.reseq}">
							<img src="/uploadFile/reviewPhoto/${reviewList.rephoto}"
								id="reviewImg" class="img-fluid rounded-circle">
						</c:if>
					</c:forEach>
					<br> <br> <br> <br>
				</div>
			</div>

			<div class="row" style="margin-bottom: 1%; margin-left: 20%;">
				<div class="col-10"></div>
				<div class="col-2">
					<a class="btn btn-outline-dark"
						href="reviewModify.do?reseq=${reviewInfo.reseq}">수정</a> <a
						class="btn btn-outline-dark"
						href="reviewDelete.do?reseq=${reviewInfo.reseq}">삭제</a>
				</div>
			</div>

			<label style="color: black;">작성자　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　${reviewInfo.redate}</label> <input
				class="form-control" id="reemail" type="text"
				placeholder="${reviewInfo.reemail}" readonly> <label
				style="margin-top: 3%; color: black;">내용</label>
			<textarea id="recontent" cols="50" rows="20" class="form-control"
				placeholder="${reviewInfo.recontent}" readonly></textarea>






		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>