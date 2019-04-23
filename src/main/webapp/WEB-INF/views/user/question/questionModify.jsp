<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#qutitle').val('${questionInfo.qutitle}')
		$('#qucontent').val('${questionInfo.qucontent}')
		$('#hiddenQuseq').val('${questionInfo.quseq}')
		$('#hiddenEmail').val('${questionInfo.quemail}');
	});
</script>
<style>
table {
	text-align: center;
	color: black;
}

#name {
	color: red;
}

#hr {
	border-top: 1px solid black;
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
		
			<form action="/question/questionModifyOK" method="POST">

				<h3 class="mb-5"></h3>
				<div class="form-group">
					<label for="email">제목</label> <input type="text"
						class="form-control" name="qutitle" id="qutitle">
				</div>

				<div class="form-group">
					<label for="message">내용</label>
					<textarea class="form-control" name="qucontent" id="qucontent"
						cols="30" rows="10"></textarea>
				</div>

				<input type="hidden" id="hiddenQuseq" name="quseq">
				<input type="hidden" id="hiddenEmail" name="quemail">

				<div class="row" style="margin-right: 12%;">
					<div class="col-6"></div>
					<div class="form-group col-6">
						<input type="submit" value="등록"
							class="btn py-3 px-4 btn-primary">
					</div>
				</div>
			</form>
		</div>

	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>
<!-- <img id="kakaotalk" src="../pedicab/resources/img/icon/kt.png">
	<a href="#">1:1 오픈 채팅방 문의<br>상담 가능 시간 10:00 ~ 18:00<br>
		(근무시간 외에는 챗봇을 이용하시면 24시간 상담이 가능합니다.)
	</a> -->