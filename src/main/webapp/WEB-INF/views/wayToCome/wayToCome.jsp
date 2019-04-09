<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/indexbg.jsp" %>
<style>
	
</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('/resources/imagesu/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate pb-5 text-center">
					<h1 class="mb-3 bread">WayToCome</h1>
				</div>
			</div>
		</div>
</section>

<section class="ftco-section">
	<div class="container" >
		<div class="row">
			<div class="col-md-12" style="padding:0px;">
				<h2>오시는 길</h2>
			<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 col-lg-8" id="map" style="margin-right: 20px; width:300px; height: 500px;">
			</div>
			<div class="col-md-2" style="float: right;">
				<p>(주)아띠이야기</p>
				<br>
				<p>
				대표이사<br>원정호
				</p>
				<br>
				<p>
				사업자 등록번호<br>123-456-7890
				</p>
				<br>
				<p>
				주소<br>서울시 강남구 봉은사로 443
				</p>
				<br>
				<p>제휴 문의</p>
				<p>Tel ) 010-123-4567</p>
			</div>
		</div>
	</div>
</section>
<section class="ftco-section">
<%@ include file="../commons/footer.jsp" %>
</section>
<!-- 자바 스크립트 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 종로구 종로 69 YMCA빌딩 7층', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">비트캠프 종로센터</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});
</script>
</body>
</html>