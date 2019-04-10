<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#reviewImg {
	width: 200px;
	height: 200px;
}

#h1 {
	color: black;
}

#hr {
	border-top: 1px solid black;
}

table {
	color: black;
	text-align: center;
}
</style>
<%@ include file="../commons/indexbg.jsp"%>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#reseq').val('${reviewVO.reseq}')
		$('#recontent').val('${reviewVO.recontent}')
		$('#reemail').val('${reviewVO.reemail}');
	});
</script>
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
					<h1 class="mb-3 bread">리뷰 수정</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>사진</th>
						<th>리뷰</th>
						<th>작성일</th>
					</tr>
				<tbody>
					<tr>
						<td>${reviewVO.reseq}</td>
						<td>${reviewVO.reemail}</td>
						<td><c:forEach items="${reviewList}" var="reviewList">
								<c:if test="${reviewVO.reseq == reviewList.reseq}">
									<br>
									<img src="/uploadFile/reviewPhoto/${reviewList.rephoto}"
										id="reviewImg">
									<br>
								</c:if>
							</c:forEach></td>
						<td>${reviewVO.recontent}</td>
						<td>${reviewVO.redate}</td>
					</tr>
				</tbody>
			</table>


			<br> <br> <br>
			<h1 id="h1">리뷰 수정</h1>
			<br>

			<form action="reviewModifyOK" modelAttribute="reviewVO"
				enctype="multipart/form-data" method="POST">

				<div class="form-group">
					<label for="email">번호 *</label>
					<input type="text" class="form-control" id="disabledInput" placeholder="${reviewVO.reseq}" disabled><br>
				</div>

				<div class="form-group">
					<label for="email">작성자 * </label>
					<input type="text" class="form-control" id="disabledInput" placeholder="${reviewVO.reemail}" disabled><br>
					<input type="hidden" id="reemail" name="reemail">
				</div>

				<div class="form-group">
					<label for="email">사진 * </label> <input type="file"
						name="photoFile">
				</div>

				<div class="form-group">
					<label for="email">리뷰 *</label>
				</div>
				<textarea class="form-control" cols="30" rows="10" placeholder="내용을 입력해주세요." id="recontent" name="recontent"></textarea>

				<input type="hidden" id="reseq" name="reseq">

				<div class="row" style="margin-top: 2%; margin-left: 5%;">
					<div class="col-5"></div>
					<div class="col-7">
						<input type="submit" value="등록" class="btn py-3 px-4 btn-primary">
					</div>
				</div>
			</form>
		</div>
	</section>

	<%@ include file="../commons/footer.jsp"%>
</body>
</html>