<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}
</style>
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section id="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">Course</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div id="map" style="width: 100%; height: 350px;"></div>
					</div>
					<div class="col-lg-12">
					<p>
						<button onclick="showmarkerinfo()">마커정보보기</button>
					</p>
					</div>
					<div class="row">
					<div class="col-lg-3"></div> 
					<div class="col-lg-6">
				<div id="markerinfo">
				<form action="/manager/marker/mregist" method="post" enctype="multipart/form-data">
				<div class="form-group">
				마커이름:<input type="text" class="form-control" name="mtitle" id="mtitle">
				</div>
				<div class="form-group">
				마커위도:<input type="text" class="form-control" name="mlocation" id="mlatitude">
				</div>
				<div class="form-group">
				마커소개:<input type="text" class="form-control" name="mcontent" id="mcontent">
				</div>
				<div class="form-group">
				마커사진:<input type="file" class="form-control" name="imgfile" id="imgfile">
				</div>
				<div class="form-group">
				<input type="submit" value="저장" id="markerinfosave" class="btn btn-primary">
				</div>
				</form>
				</div>
				</div>
				<div class="col-lg-3"></div> 
				</div>	
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=drawing"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		mapOption = {
			center : new daum.maps.LatLng(37.57045624692911, 126.9854373262434), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var x= document.getElementById('mlatitude');
		var y= document.getElementById('mlongitude');
		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		

		// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위치에 마커를 표시합니다 
			addMarker(mouseEvent.latLng);
			
		});

		// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
		var markers = [];

		// 마커를 생성하고 지도위에 표시하는 함수입니다
		function addMarker(position) {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				position : position
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			// 생성된 마커를 배열에 추가합니다
			markers.push(marker);
		}
		   

		// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
		function setMarkers(map) {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(map);
			}
		}
		function showmarkerinfo(){
			for(var i=0;i<markers.length;i++){
				x.value=markers[0].getPosition().toString();
			}
		}
		var linePath = [];
		var polyline = new daum.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 5, // 선의 두께 입니다
			strokeColor : '#FFAE00', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});
		function addLine(position) {

			var line = new daum.maps.Polyline({
				path : markers[i]
			})
		}

		// 지도에 선을 표시합니다 
		polyline.setMap(map);
	</script>
</body>
</html>