<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/user/commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/user/commons/Header.jsp"%>
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
		
		<a href="/review/reviewWrite.do">리뷰작성</a>
		<a href="review/reviewWrite.do"></a>
		
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
			<c:forEach items="${list}" var="reserve">
			<tr>
			<td>${reserve.rtime}</td>
			<td>${reserve.rbank}</td>
			<td>${reserve.raccount}</td>
			<td>${reserve.rmemo}</td>
			<td><div class="btn-group">
			<a href="/review/reviewWrite.do?cseq=${reserve.cseq}" class="btn btn-success">리뷰등록</a>
			<a href="/user/reserve/userremove?rseq=${reserve.rseq}" class="btn btn-danger">삭제</a>
			<c:if test="${reserve.rok.equals(\"false\") }">
			<a href="/user/payment?rseq=${reserve.rseq }" class="btn btn-primary">결제하기</a>
			</c:if>
			<c:if test="${reserve.rok.equals(\"true\") }">
			<a href="" class="btn btn-outline-dark disabled">결제완료</a>
			</c:if>
			</div>
			</td>
			</tr>
			</c:forEach>
			</table>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/views/user/commons/footer.jsp"%>
</body>
</html>