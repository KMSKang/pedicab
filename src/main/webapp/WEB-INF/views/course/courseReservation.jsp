<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코스 예약</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
		
	$(document).ready(function() {
		
		var c = 0;
			
		$("#Heart").click(function() {
			
			if (c == 0) {
				if(confirm("즐겨찾기에 추가하시겠습니까?")){
				$("#Heart img").attr("src","../resources/img/heart/HeartRed.png")
				$.ajax({// ajax
					url : 'http://localhost/favoriteRegister', // 요청 보내기
					method : 'POST',
					data : { // Controller로 보낼 데이터 (Favorite에 있는 형식으로 보내야돼)
					faemail : 'aaa@naver.com',
					falink : '<a href="courseReservation.do"><img	src="../resources/img/course/course1.jpg"></a>'
					}
				})
				return ++c;
				}
				} else {
					if(confirm("즐겨찾기에 삭제하시겠습니까?")){
					$("#Heart img").attr("src","../resources/img/heart/HeartWhite.png")
					$.ajax({
						url : 'http://localhost/favoriteDelete',
						method : 'GET',
						data : {
							falink : '<a href="courseReservation.do"><img	src="../resources/img/course/course1.jpg"></a>' 
						}
					})
					return --c;
					}
					}
			})
			});
</script>

<style>

.left {
	float: left;
	margin: 10px;
}

a {
	text-decoration: none;
	color: black;
}

#show {
	background-color: white;
	color: black;
	border: 1px solid white;
	font-size: 15px;
}

#text {
	width: 1820px;
	height: 51px;
}

#button1 {
	width: 50px;
	height: 55px;
}

#Heart {
	margin-left: 680px;
	margin-top: 430px;
	position: absolute;
}

#courseImage{

}

</style>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/userCategory.jsp"
			flush="false" />
	</div>

	<a href="#Redirect" id="Heart">
	<img src="../resources/img/heart/HeartWhite.png">
	</a>


	<div class="left">
		<img src="../resources/img/course/course1.jpg" id="courseImage">
		<pre>
			<span>투어명</span>    <span>여의도</span>
		</pre>
		<pre>
			<span>투어설명</span>  <span>서북촌은 경복궁 옆에 위치한 가회동</span>
		</pre>
	</div>

	<div class="right">
		<hr>
		<p>예약하기</p>
		<hr>
		<pre>날짜     시간</pre>
		<input type="button" name="" value="날짜선택"> <input
			type="button" name="" value="시간선택"> <br> <br> 인원 <br>
		<input type="button" name="" value="-"> <input type="button"
			name="" value="0"> <input type="button" name="" value="+">
		<br> $환불계좌 <br> <input type="button" name="" value="은행선택">
		<textarea>요청사항</textarea>
		<br> <input type="button" name="" value="계좌번호"> <br>
		<textarea style="width: 300px; border: 1;" rows="10">
<아띠 요금 기준>
-인력거 1대당 정원은 성인2명 입니다. (성인 1인 : 30,000원)
-만 4세 미만 유아 한명까지 무료 동승 가능 합니다.
-성인 2인당 유아 1명 무료 적용
-만 4세 미만 유아를 동반하실 때에는
 결제시에 요청사항에 적어주시기 바랍니다.
</textarea>
		<br> <span>총 인력거</span><span>0대</span> <br> <span>총
			금액</span><span>0원</span> <br> <input type="button" name="" value="결제하기">
	</div>

	<div class="main">
		<div class="session">

			<div class="map">
				<h2>투어 정보</h2>
				<img src=../resources/img/map/map3.png alt="map img"
					height="250" width="250">
			</div>
			<hr>
			<div class="grade">
				<h2>평점</h2>
				<h1>
					4.0 <span>15명의 리뷰</span>
				</h1>
				<h1>♡♥♥♥♥</h1>
			</div>
			<hr>
			<div class="graph">
				<h1>그래프</h1>
				<h3>그래프 들어갈 곳</h3>
			</div>
			<hr>
			<div>
				<h1>리뷰</h1>
				<h3>리뷰 리스트</h3>
			</div>
		</div>
	</div>

	<table class="table table-hover">
		<tr>
			<th>reseq</th>
			<th>reemail</th>
			<th>renphoto</th>
			<th>recontent</th>
			<th>redate</th>
			<th>기타</th>
		</tr>
		
		<c:forEach items="${reviewList}" var="reviewList">
		
			<tr>
				<th>${reviewList.reseq}</th>
				<th>${reviewList.reemail}</th>
				<th><img src="uploadFile\memberPhoto/${reviewList.rephoto}" /></th>
				<th>${reviewList.recontent}<br>
				<c:forEach items="${commentList}" var="commentList">
						<c:if test="${commentList.reseq == reviewList.reseq}">
							<br>---------답글------------<br>${commentList.cocontent}<br>
						</c:if>
					</c:forEach>
				</th>
				<th>${reviewList.redate}</th>

				<th><a href="/review/reviewInfo.do?reseq=${reviewList.reseq}">관리</a></th>
			</tr>
			
		</c:forEach>
	</table>

</body>
</html>