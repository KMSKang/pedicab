<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				</div>
				<div class="row">
				<div class="col-lg-12">
				<div class="form">
				<form action="">
				<div class="form-group">
				<input type="text" name="matitle">
				</div>
				<div class="form-group">
				<input type="text" name="matitle">
				</div>
				<div class="form-group">
				<input type="text" name="matitle">
				</div>
				<div class="form-group">
				<input type="button" value="추가" id="markerinfoadd">
				</div>
				</form>
				</div>
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
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위치에 마커를 표시합니다 
			addMarker(mouseEvent.latLng);
		});

		// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
		var markers = [];

		//마커를 클릭했을 떄 보여줄 인포윈도우를 만든다.
		// 마커를 생성하고 지도위에 표시하는 함수입니다
		function addMarker(position) {

			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				position : position,
				 clickable: true 
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			marker.setDraggable(true);

			// 생성된 마커를 배열에 추가합니다
			markers.push(marker);
		}

		var content = '<div class="wrap">'+
		              '<div class="info">' +
		              'div class="title">'
		// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
		function setMarkers(map) {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(map);
			}
		}

		// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
		function showMarkers() {
			setMarkers(map)
		console.log(markers);
		}

		// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
		function hideMarkers() {
			setMarkers(null);
		}
	</script>
</body>
</html>