<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#name {
	color: red;
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
			<form action="/question/questionWriteOK" method="POST">

				<div class="form-group">
					<label for="email">작성자 *</label> <input type="text"
						class="form-control" name="quemail" id="email"
						placeholder="작성자명을 입력해주세요.">
				</div>
				
				<div class="form-group">
					<label for="name">제목 *</label> <input type="text"
						class="form-control" name="qutitle" id="name"
						placeholder="제목을 입력해주세요." style="width: 300px !important;">
				</div>

				<div class="form-group">
					<label for="message">내용</label>
					<textarea name="qucontent" id="message" cols="30" rows="10"
						class="form-control" placeholder="내용을 입력해주세요."></textarea>
				</div>

				<div class="row" style="margin-right: 12%;">
					<div class="col-6"></div>
					<div class="form-group col-6">
						<input type="submit" value="문의하기" class="btn py-3 px-4 btn-primary">
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