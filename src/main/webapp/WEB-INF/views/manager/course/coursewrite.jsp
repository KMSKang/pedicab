<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CourseWrite</title>
<%@include file="../../commons/mh.jsp"%>
<style>
.map_wrap {
	width: 100%;
	position: relative;
}

.modes {
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 1;
}

.getdata {
	position: absolute;
	top: 370px;
	left: 10px;
	z-index: 1;
}

#drawingMap, #map {
	width: 100%;
	height: 350px;
}

#map {
	margin-top: 10px;
}
</style>
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
						<div class="panel-body">
							<form role="form" action="/manager/course/coursewrite"
								method="POST" enctype="multipart/form-data">
								<div class="form-group">
									<label for="cname">코스명</label> <input type="text" name="cname"
										id="cname" class="form-control" placeholder="Enter CourseName">
								</div>
								<div class="form-group">
									<label for="cinfo">코스소개</label>
									<textarea name="cinfo" id="cinfo" class="form-control"
										placeholder="Enter Courseinfo"></textarea>
								</div>
								<div class="form-group">
									<label for="cstart">출발장소</label> <input type="text"
										name="cstart" id="cstart" class="form-control"
										placeholder="Enter Startpoint">
								</div>
								<div class="form-group">
									<label for="cprice">요금</label> <input type="text" name="cprice"
										id="cname" class="form-control" placeholder="Enter price">
								</div>
								<div class="form-group">
									<label for="cinfo">맵데이터 (JSON)</label>
									<textarea name="cinfo" id="cmap" class="form-control"
										placeholder="Enter Courseinfo" value=""></textarea>
								</div>
								<div class="form-group">
									<label for="imgfile">코스사진등록</label> <input name="imgfile"
										type="file" id="imgfile">
								</div>
								<button type="submit" class="btn btn-primary">등록</button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="map_wrap">
						<div id="drawingMap"></div>
						<p class="modes">
							<button onclick="selectOverlay('MARKER')">마커</button>
							<button onclick="selectOverlay('POLYLINE')">선</button>
							<button onclick="selectOverlay('CIRCLE')">원</button>
							<button onclick="selectOverlay('RECTANGLE')">사각형</button>
							<button onclick="selectOverlay('POLYGON')">다각형</button>
						</p>
						<p class="getdata">
							<button onclick="getDataFromDrawingMap()">가져오기</button>
						</p>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=drawing"></script>
	<script>
		// Drawing Manager로 도형을 그릴 지도 div
		var drawingMapContainer = document.getElementById('drawingMap'), drawingMap = {
			center : new daum.maps.LatLng(37.57045624692911, 126.9854373262434 ), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		
		var cmap =$('#cmap');

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var drawingMap = new daum.maps.Map(drawingMapContainer, drawingMap);

		var options = { // Drawing Manager를 생성할 때 사용할 옵션입니다
			map : drawingMap, // Drawing Manager로 그리기 요소를 그릴 map 객체입니다
			drawingMode : [ // Drawing Manager로 제공할 그리기 요소 모드입니다
			daum.maps.drawing.OverlayType.MARKER,
					daum.maps.drawing.OverlayType.POLYLINE,
					daum.maps.drawing.OverlayType.RECTANGLE,
					daum.maps.drawing.OverlayType.CIRCLE,
					daum.maps.drawing.OverlayType.POLYGON ],
			// 사용자에게 제공할 그리기 가이드 툴팁입니다
			// 사용자에게 도형을 그릴때, 드래그할때, 수정할때 가이드 툴팁을 표시하도록 설정합니다
			guideTooltip : [ 'draw', 'drag', 'edit' ],
			markerOptions : { // 마커 옵션입니다 
				draggable : true, // 마커를 그리고 나서 드래그 가능하게 합니다 
				removable : true
			// 마커를 삭제 할 수 있도록 x 버튼이 표시됩니다  
			},
			polylineOptions : { // 선 옵션입니다
				draggable : true, // 그린 후 드래그가 가능하도록 설정합니다
				removable : true, // 그린 후 삭제 할 수 있도록 x 버튼이 표시됩니다
				editable : true, // 그린 후 수정할 수 있도록 설정합니다 
				strokeColor : '#39f', // 선 색
				hintStrokeStyle : 'dash', // 그리중 마우스를 따라다니는 보조선의 선 스타일
				hintStrokeOpacity : 0.5
			// 그리중 마우스를 따라다니는 보조선의 투명도
			},
			rectangleOptions : {
				draggable : true,
				removable : true,
				editable : true,
				strokeColor : '#39f', // 외곽선 색
				fillColor : '#39f', // 채우기 색
				fillOpacity : 0.5
			// 채우기색 투명도
			},
			circleOptions : {
				draggable : true,
				removable : true,
				editable : true,
				strokeColor : '#39f',
				fillColor : '#39f',
				fillOpacity : 0.5
			},
			polygonOptions : {
				draggable : true,
				removable : true,
				editable : true,
				strokeColor : '#39f',
				fillColor : '#39f',
				fillOpacity : 0.5,
				hintStrokeStyle : 'dash',
				hintStrokeOpacity : 0.5
			}
		};

		// 위에 작성한 옵션으로 Drawing Manager를 생성합니다
		var manager = new daum.maps.drawing.DrawingManager(options);

		// 버튼 클릭 시 호출되는 핸들러 입니다
		function selectOverlay(type) {
			// 그리기 중이면 그리기를 취소합니다
			manager.cancel();

			// 클릭한 그리기 요소 타입을 선택합니다
			manager.select(daum.maps.drawing.OverlayType[type]);
		}

		// Drawing Manager에서 데이터를 가져와 도형을 표시할 아래쪽 지도 div
		var mapContainer = document.getElementById('map'), mapOptions = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도 div와 지도 옵션으로 지도를 생성합니다
		var map = new daum.maps.Map(mapContainer, mapOptions), overlays = []; // 지도에 그려진 도형을 담을 배열
        
		//var cmap = document.getElementById('cmap');
		// 가져오기 버튼을 클릭하면 호출되는 핸들러 함수입니다
		// Drawing Manager로 그려진 객체 데이터를 가져와 아래 지도에 표시합니다
		function getDataFromDrawingMap() {
			// Drawing Manager에서 그려진 데이터 정보를 가져옵니다 
			var madata = manager.getData();
			var cmapi = JSON.stringify(madata);
			console.log(madata);
			console.log(cmapi);
			cmap.val(cmapi);
			cmap.value = cmapi;
		}
	</script>
</body>
</html>