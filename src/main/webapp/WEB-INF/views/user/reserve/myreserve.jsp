<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="../../commons/Header.jsp"%>
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/resources/imagesu/bg_4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">My Reserve</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container">
			<h1>${sessionScope.uid}님의예약</h1>
			<div class="row">
			<br>
			<table class="table table-hover">
			<tr>
			<td>예약시간</td>
			<td>은행</td>
			<td>계좌</td>
			<td>요구사항</td>
			<td>action</td>
			</tr>
			<tr>
			<c:forEach items="${list}" var="reserve">
			<td>${reserve.rtime}</td>
			<td>${reserve.rbank}</td>
			<td>${reserve.raccount}</td>
			<td>${reserve.rmemo}</td>
			<td><a href="">수정</a></td>
			</c:forEach>
			</tr>
			</table>
			</div>
		</div>
	</section>
	<%@include file="../../commons/footer.jsp"%>
</body>
</html>