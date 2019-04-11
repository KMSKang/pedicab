<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	var para = document.location.href.split("?cseq=");
	console.log(para);

	$(document).ready(function() {
		$('#cseq').val(para[1]);
	});
</script>
<style>
.ftco-section {
	padding: 50px 10px 150px 10px !important;
}

label {
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
					<h1 class="mb-3 bread">리뷰 작성</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<form action="/review/reviewWriteOK" method="POST"
				enctype="multipart/form-data" id="form1">
				<div class="row" style="margin-top: 2%; margin-left: 5%;">
					<div class="col-6">
						<img src="../resources/img/course/course1.jpg" class="img-fluid"
							alt="경복궁사진" style="width: 400px; height: 400px;">
					</div>
					<div class="col-6">
						<div class="form-group">
							<label for="email">성함 *</label> <input type="text"
								class="form-control" placeholder="성함을 입력해주세요." name="reemail">
						</div>
						<div class="form-group" style="margin-top: 10%">
							<label>사진 : </label><input type="file" name="photoFile">
							<br>
						</div>

						<div class="form-group" style="margin-top: 10%">
							<label for="email">리뷰 *</label> <input type="text"
								class="form-control" placeholder="리뷰를 작성해주세요." name="recontent">
						</div>

						<input type="hidden" id="cseq" name="cseq">

						<div class="row" style="">
							<div class="col-5"></div>
							<div class="col-7">
								<input type="submit" value="등록"
									class="btn py-3 px-4 btn-primary" style="margin-top: 7%;">
							</div>
						</div>

					</div>
				</div>


			</form>
		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>