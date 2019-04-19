<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
</head>
<body>
	<div id="map" style="width: 100%; height: 600px;"></div>
	<div id="marker"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cc84e86d65eee9754a6074c7329a9302&libraries=drawing"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도의 중심좌표
		mapOption = {
			center : new daum.maps.LatLng(37.57045624692911, 126.9854373262434), // 지도의 중심좌표
			level : 2
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		
		var positions =[
			<c:forEach items="${list}" var="marker">
			
			{
				latlng:new daum.maps.LatLng${marker.mlocation}
			},
			</c:forEach>
			
			
		];
		//마커를 담은 배열
		var markers=[];
		
		
		//DB에 저장된 마커를 지도에 찍음.
		for(var i=0;i<positions.length;i++){			
		var marker = new daum.maps.Marker({
			map : map,
			position : positions[i].latlng,
		});
		markers.push(marker);
		}
// 			<c:forEach items="${list}" var="marker">
// 		positions.forEach(function(pos){
// 			var customoverlay= new daum.maps.CustomOverlay({
// 				position:markers.latlng
// 			})
// 			let content = document.createElement('div');
// 			content.className("wrap");
// 			let info =document.createElement('div');
// 			info.className("info");
// 			content.appendChild(info);
// 			let title=document.createElement('div');
// 			title.className("title");
// 			title.innerHTML('${marker.mtitle}');
// 			info.appendChild(title);
// 			let close=document.createElement('div');
// 			close.className("close");
// 			title.appendChild(close);
// 			close.onclick=function(){customoverlay.setMap(null);};
// 			let body =document.createElement('div');
// 			body.className("body");
// 			content.appendChild(body);
			
// 			customoverlay.setContent(content);
// 			customoverlay.setMap(map);
// 		});
// 			</c:forEach>
		
		// 커스텀 오버레이에 표시할 컨텐츠 입니다
		// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		// 별도의 이벤트 메소드를 제공하지 않습니다 
		                
		var content =[
			<c:forEach items="${list}" var="marker">
		         (

				    '<div class="wrap">' +
					'    <div class="info">' +
					'        <div class="title" id="title">' +
					'            ${marker.mtitle}' +
					'            <div class="close" onclick="closeOverlay()" title="닫기" id="close"></div>' +
					'        </div>' +
					'        <div class="body">' +
					'            <div class="img">' +
					'                <img src="/uploadFile/markerPhoto/${marker.mimg}" width="73" height="70">' +
					'           </div>' +
					'            <div class="desc">' +
					'                <div class="ellipsis">${marker.mcontent}</div>' +
					'<button class="plus">추가</button>'+
					'            </div>' +
					'        </div>' +
					 '    </div>' +
					 '</div>'
			      ),
				</c:forEach>
			];
		
		
// 		var contents =[
// 			{
// 				mtitle:"안녕1",
// 				img:"/uploadFile/markerPhoto/종로타워",
// 				mcontent:"안녕1"
// 			},

// 			{
// 				mtitle:"안녕2",
// 				img:"/uploadFile/markerPhoto/종로타워",
// 				mcontent:"안녕2"
// 			}
			
			
// 		];
		
// 	    for(var i=0;i<contents.length;i++){
// 	    	 let info =document.createElement('div');
// 	    	 info.classNmae('info')
// 			 wrap.className('info');
// 			 document.getElementByClassName("wrap").appendChild(info);
// 			 var title = document.createElement('div');
// 	    }
		
		
		 
		 
		var overlays=[];
		for(var i=0;i<markers.length;i++){
			//오버레이생성.
		    var overlay= new daum.maps.CustomOverlay({
			content : content[i],
			map:map,
			position : markers[i].getPosition()
		});
			overlays.push(overlay)
			//마커를 클릭했을 떄 커스텀오버레이를 표시
		daum.maps.event.addListener(markers[i], 'click', function() {
			overlays.indexof(overlay).setMap(map);
		});
			//닫기버튼을 누를경우 호출되는 함수.
		function closeOverlay() {
			overlays.indexof(overlay).setMap(null);
		}
			
		} 
		for(var i=0;i<markers.length;i++){
       $(".plus").click(function(){
    	   $("#marker").html(JSON.stringify(marker));	 
       });
		}
	</script>
</body>
</html>