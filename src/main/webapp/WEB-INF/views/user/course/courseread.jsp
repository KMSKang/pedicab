<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=drawing"></script>
<style>
#reviewImg {
	width: 200px;
	height: 200px;
}

table {
	text-align: center;
	color: black;
}

table a {
	color: black;
}

#td {
	vertical-align: middle;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document)
			.ready(
					function() {

						var c = 0;

						$("#Heart")
								.click(
										function() {

											if (c == 0) {
												if (confirm("즐겨찾기에 추가하시겠습니까?")) {
													$("#Heart img")
															.attr("src",
																	"../resources/img/heart/HeartRed.png")
													$
															.ajax({// ajax
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
												if (confirm("즐겨찾기에 삭제하시겠습니까?")) {
													$("#Heart img")
															.attr("src",
																	"../resources/img/heart/HeartWhite.png")
													$
															.ajax({
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
<%@ include file="../../commons/indexbg.jsp"%>
</head>
<body>
	<%@ include file="../../commons/Header.jsp"%>
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/uploadFile/coursePhoto/${course.cimg}');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">CourseInfo</h1>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row block-9">
				<div class="col-md- order-md-last d-flex">
					<form class="bg-light p-5 contact-form">
						<div class="form-group">
							<label class="col-lg-2 control-label">map</label>
							<div id="map" style="width: 700px; height: 700px;"></div>
						</div>
						<div class="form-group">
							<img src="/uploadFile/coursePhoto/${course.cimg}" id="cimg"
								style="width: 650px; heigth: 600px;">
						</div>
						<hr class="col-6-flex">
						<div class="form-group">
							<label style="color: black">코스명</label>
							<p id="cname">${course.cname }</p>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">코스소개</label>
							<p id="cinfo">${course.cinfo }</p>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">코스가격</label>
							<p id="cprice">${course.cprice }</p>
						</div>
					</form>
				</div>
				<div class="col-md- order-md-last d-flex">
					<form class="bg-black p-5" action="/user/reserve/userreserve"
						method="post">
						<div class="form-group">
							<h1>예약하기</h1>
						</div>
						<hr class="col-6-flex">
						<div class="form-group">
							<label style="color: black" for="rtime">시간선택</label> <br> <select
								name="rtime" id="rtime" class="form-control">
								<option value="10시">10:00~11:00</option>
								<option value="11시">11:00~12:00</option>
								<option value="12시">12:00~13:00</option>
								<option value="13시">13:00~14:00</option>
								<option value="14시">15:00~16:00</option>
								<option value="15시">17:00~18:00</option>
							</select>
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black" for="rbank">환불은행</label> <input
								type="text" class="form-control" name="rbank" id="rbank">
						</div>
						<hr>
						<div class="form-group">
							<label style="color: black">계좌번호</label><input type="text"
								class="form-control" name="raccount" id="raccount">
						</div>
						<div class="form-group">
							<label style="color: black">요청사항</label><input type="text"
								class="form-control" name="rmemo" id="rmemo">
						</div>
						<div class="form-group" style="display: none;">
							<label style="color: black">요청사항</label> <input type="text"
								class="form-control" name="uid" id="useq"
								value="${sessionScope.uid}"> <input type="text"
								class="form-control" name="cseq" id="cseq"
								value="${course.cseq }">
						</div>
						<div class="form-group">
							<input type="submit" value="에약하기"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>

				<div class="col-md- order-md-last d-flex">
					<form class="bg-light p-5 contact-form">
						<table class="table table-hover">
							<c:forEach items="${reviewList}" var="reviewList">
								<tr>
									<td id="td">${reviewList.reemail}</td>
									<td><img
										src="/uploadFile/reviewPhoto/${reviewList.rephoto}"
										id="reviewImg"></td>
									<td id="td"><a
										href="/review/reviewInfo.do?reseq=${reviewList.reseq}">${reviewList.recontent}<br>
											<c:forEach items="${commentList}" var="commentList">
												<c:if test="${commentList.reseq == reviewList.reseq}">
													<br>-----------------답글-------------------<br>${commentList.cocomment}<br>
												</c:if>
											</c:forEach>
									</a></td>
									<td id="td">${reviewList.redate}</td>
								</tr>
							</c:forEach>
						</table>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../../commons/footer.jsp"%>
	<script type="text/javascript">
		var data = $
		{
			course.cmap
		}
		var x = data.marker[0].x;
		var y = data.marker[0].y;
		var mapContainer = document.getElementById('map'), mapOptions = {
			center : new daum.maps.LatLng(y, x), // 지도의 중심좌표
			level : 5
		}
		var map = new daum.maps.Map(mapContainer, mapOptions), overlays = [];
		$(document).ready(function() {
			console.log(data);
			console.log(overlays);

			drawMarker(data[daum.maps.drawing.OverlayType.MARKER]);
			drawPolyline(data[daum.maps.drawing.OverlayType.POLYLINE]);
		});

		function drawMarker(markers) {
			var len = markers.length, i = 0;

			for (; i < len; i++) {
				var marker = new daum.maps.Marker(
						{
							map : map,
							position : new daum.maps.LatLng(markers[i].y,
									markers[i].x),
							zIndex : markers[i].zIndex
						});

				overlays.push(marker);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 선을 아래 지도에 표시하는 함수입니다
		function drawPolyline(lines) {
			var len = lines.length, i = 0;

			for (; i < len; i++) {
				var path = pointsToPath(lines[i].points);
				var style = lines[i].options;
				var polyline = new daum.maps.Polyline({
					map : map,
					path : path,
					strokeColor : style.strokeColor,
					strokeOpacity : style.strokeOpacity,
					strokeStyle : style.strokeStyle,
					strokeWeight : style.strokeWeight
				});

				overlays.push(polyline);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 사각형을 아래 지도에 표시하는 함수입니다
		function drawRectangle(rects) {
			var len = rects.length, i = 0;

			for (; i < len; i++) {
				var style = rects[i].options;
				var rect = new daum.maps.Rectangle({
					map : map,
					bounds : new daum.maps.LatLngBounds(new daum.maps.LatLng(
							rects[i].sPoint.y, rects[i].sPoint.x),
							new daum.maps.LatLng(rects[i].ePoint.y,
									rects[i].ePoint.x)),
					strokeColor : style.strokeColor,
					strokeOpacity : style.strokeOpacity,
					strokeStyle : style.strokeStyle,
					strokeWeight : style.strokeWeight,
					fillColor : style.fillColor,
					fillOpacity : style.fillOpacity
				});

				overlays.push(rect);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 원을 아래 지도에 표시하는 함수입니다
		function drawCircle(circles) {
			var len = circles.length, i = 0;

			for (; i < len; i++) {
				var style = circles[i].options;
				var circle = new daum.maps.Circle({
					map : map,
					center : new daum.maps.LatLng(circles[i].center.y,
							circles[i].center.x),
					radius : circles[i].radius,
					strokeColor : style.strokeColor,
					strokeOpacity : style.strokeOpacity,
					strokeStyle : style.strokeStyle,
					strokeWeight : style.strokeWeight,
					fillColor : style.fillColor,
					fillOpacity : style.fillOpacity
				});

				overlays.push(circle);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 다각형을 아래 지도에 표시하는 함수입니다
		function drawPolygon(polygons) {
			var len = polygons.length, i = 0;

			for (; i < len; i++) {
				var path = pointsToPath(polygons[i].points);
				var style = polygons[i].options;
				var polygon = new daum.maps.Polygon({
					map : map,
					path : path,
					strokeColor : style.strokeColor,
					strokeOpacity : style.strokeOpacity,
					strokeStyle : style.strokeStyle,
					strokeWeight : style.strokeWeight,
					fillColor : style.fillColor,
					fillOpacity : style.fillOpacity
				});

				overlays.push(polygon);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 
		// 선과 다각형의 꼭지점 정보를 daum.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
		function pointsToPath(points) {
			var len = points.length, path = [], i = 0;

			for (; i < len; i++) {
				var latlng = new daum.maps.LatLng(points[i].y, points[i].x);
				path.push(latlng);
			}

			return path;
		}
	</script>
</body>
</html>