<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../../commons/mh.jsp"%>
</head>
<script src="${pageContext.request.contextPath}/resources/jsm/jquery.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=drawing"></script>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<h3 class="page-header">Courseinfo(${course.cname})</h3>
					<div class="col-lg-12">
						<form>
							<div class="form-group">
								<label class="col-lg-2 control-label">img</label>
								<div class="col-lg-10">
									<p class="form-control-static">
										<img src="/uploadFile/coursePhoto/${course.cimg }"
											style="width: 200px; heigth: 200px;">
									</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">name</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cname }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">info</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cinfo }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">price</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cprice }</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">start point</label>
								<div class="col-lg-10">
									<p class="form-control-static">${course.cstart}</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">map</label>
								<div id="map" style="width:500px;height:500px;"></div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
	<script type="text/javascript">	
	var data =${course.cmap}
	var x=data.marker[0].x;
	var y=data.marker[0].y;
	var mapContainer = document.getElementById('map'), mapOptions ={
		center : new daum.maps.LatLng(y,x ), // 지도의 중심좌표
		level : 5
	}
	var map = new daum.maps.Map(mapContainer, mapOptions), overlays = [];
	$(document).ready(function(){
	console.log(data);
	console.log(overlays);

	    drawMarker(data[daum.maps.drawing.OverlayType.MARKER]);
	    drawPolyline(data[daum.maps.drawing.OverlayType.POLYLINE]);
	});
	
	function drawMarker(markers) {
	    var len = markers.length, i = 0;

	    for (; i < len; i++) {
	        var marker = new daum.maps.Marker({
	            map: map, 
	            position: new daum.maps.LatLng(markers[i].y, markers[i].x), 
	            zIndex: markers[i].zIndex
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
	            map: map,
	            path: path,
	            strokeColor: style.strokeColor,
	            strokeOpacity: style.strokeOpacity,
	            strokeStyle: style.strokeStyle,
	            strokeWeight: style.strokeWeight
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
	            map: map, 
	            bounds: new daum.maps.LatLngBounds(
	                new daum.maps.LatLng(rects[i].sPoint.y, rects[i].sPoint.x),
	                new daum.maps.LatLng(rects[i].ePoint.y, rects[i].ePoint.x)
	            ), 
	            strokeColor: style.strokeColor,
	            strokeOpacity: style.strokeOpacity,
	            strokeStyle: style.strokeStyle,
	            strokeWeight: style.strokeWeight,
	            fillColor: style.fillColor,
	            fillOpacity: style.fillOpacity
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
	            map: map, 
	            center: new daum.maps.LatLng(circles[i].center.y, circles[i].center.x), 
	            radius: circles[i].radius,
	            strokeColor: style.strokeColor,
	            strokeOpacity: style.strokeOpacity,
	            strokeStyle: style.strokeStyle,
	            strokeWeight: style.strokeWeight,
	            fillColor: style.fillColor,
	            fillOpacity: style.fillOpacity
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
	            map: map,
	            path: path,
	            strokeColor: style.strokeColor,
	            strokeOpacity: style.strokeOpacity,
	            strokeStyle: style.strokeStyle,
	            strokeWeight: style.strokeWeight,
	            fillColor: style.fillColor,
	            fillOpacity: style.fillOpacity
	        });

	        overlays.push(polygon);
	    }
	}

	// Drawing Manager에서 가져온 데이터 중 
	// 선과 다각형의 꼭지점 정보를 daum.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
	function pointsToPath(points) {
	    var len = points.length, 
	        path = [], 
	        i = 0;

	    for (; i < len; i++) { 
	        var latlng = new daum.maps.LatLng(points[i].y, points[i].x);
	        path.push(latlng); 
	    }

	    return path;
	}	
	</script>

</body>
</html>