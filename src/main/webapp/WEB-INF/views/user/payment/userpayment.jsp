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
					<h1 class="mb-3 bread">Payment</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container" style="text-align:center">
		<h1>${sessionScope.uid}님의결제</h1><br>
		<div class="row">
			<ul class="list-group" style="width:50%; margin:auto;">
				<li class="list-group-item list-group-item-secondary">결제 정보</li>
				<li class="list-group-item">
					<strong>예약 시간</strong>&ensp;${reserve.rtime }<br>
					<strong>계좌 정보</strong>&ensp;${reserve.raccount }<br>
					<strong>은행 정보</strong>&ensp;${reserve.rbank }<br>
					<strong>예약 일자</strong>&ensp;${reserve.rdate }<br>
				</li>
				<li class="list-group-item list-group-item-secondary">코스 정보</li>
				<li class="list-group-item">
					<strong>예약 코스</strong>&ensp;${course.cname }<br>
					<strong>코스 설명</strong>&ensp;${course.cinfo }<br>
					<strong>시작 장소</strong>&ensp;${course.cstart }<br>
					<strong>결제 금액&ensp;${course.cprice } 원</strong><br>
				</li>
				<li class="list-group-item">
					<a class="btn btn-primary" id="kakaopay-btn"><strong>카카오 결제</strong></a>
				</li>
			</ul>
			<input type="hidden" value="${reserve.cseq}" id="cseq" />
			<input type="hidden" value="${reserve.rseq}" id="rseq" />
		</div>
		</div>
		</section>
	<%@include file="../../commons/footer.jsp"%>
		<script>
		$(document).ready(function(){
			$('#kakaopay-btn').on('click', kakaopay);
		})
		
		let popup;
		let timer;
		
		function kakaopay(e){
			e.preventDefault();
			var cseq = $('#cseq').val();
			var rseq = $('#rseq').val();
			$.ajax({
				url : 'http://localhost/user/payment/kakao?cseq=' + cseq + '&rseq=' + rseq,
				type : 'GET',
				success : function(res){
					res = JSON.parse(res);
					console.log(res.next_redirect_pc_url);
					popup = window.open(res.next_redirect_pc_url, '카카오 결제', 'width=400, height=600, status=no, toolbar=no, location=no, top=200');
					timer = setInterval(function(){
						if(popup.closed){
							location.href="http://localhost/user/reserve/myreserve"
						}
					}, 1000)
				}
			})
			
			
		}
		</script>
</body>
</html>