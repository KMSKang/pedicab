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

#qutitle::placeholder{
	color: #666;
}

#nocontent::placeholder{
	color: #666;
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
			<div class="row" style="margin-left: 20%;">
				<div class="col-10"></div>
				<div class="col-2">
					<a class="btn btn-outline-dark" href="questionModify.do?quseq=${questionInfo.quseq}">수정</a> <a
						class="btn btn-outline-dark" href="/question/questionDelete.do?quseq=${questionInfo.quseq}">삭제</a>
				</div>
			</div>
			<input type="hidden" id ="qutitle" placeholder="${questionInfo.quemail}" readonly>
			<label style="color:black; margin-top: 3%;">제목　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　${questionInfo.qudate}</label>
			<input class="form-control" id ="qutitle" type="text" placeholder="${questionInfo.qutitle}" readonly>
				<label style="margin-top: 3%; color:black;">내용</label>
			<textarea id="nocontent" cols="50" rows="20" class="form-control" placeholder="${questionInfo.qucontent}" readonly></textarea>

			<br> <br>
			<hr>
			<br>

			<h1>관리자 답변</h1>
			
			<br><br>
			
				<c:forEach items="${answerList}" var="answerList">
					<c:if test="${answerList.quseq == questionInfo.quseq}">
			
			<label style="color:black;">작성자　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　${answerList.nadate}</label>
			<input class="form-control" id ="qutitle" type="text" placeholder="${answerList.naname}" readonly>
				<label style="margin-top: 3%; color:black;">내용</label>
			<textarea id="nocontent" cols="50" rows="20" class="form-control" placeholder="${answerList.nacontent}" readonly></textarea>
			
					</c:if>
				</c:forEach>
			
		</div>
	</section>
	<%@ include file="../commons/footer.jsp"%>
</body>
</html>