<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url:"jsonResponse3",
				dataType: "json",
				success: function(x) {
					id = x.id
					pw = x.pw
					name = x.name
					tel = x.tel //json에서 tel키로 값을 추출
					table = "<table border = 1><tr><td>항목명</td><td>값</td></tr>" + 
					"<tr><td>아이디</td><td>" + id +"</td></tr>" + 
					"<tr><td>패스워드</td><td>" + pw +"</td></tr>" + 
					"<tr><td>이름</td><td>" + name +"</td></tr>" + 
					"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
					$('#result').append(table)
				}// success
			})// ajax
		})// b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url:"jsonResponse4",
				dataType: "json",
				success: function(x) {
					id = x[0].id
					pw = x[0].pw
					name = x[0].name
					tel = x[0].tel //json에서 tel키로 값을 추출
					table = "<table border = 1><tr><td>항목명</td><td>값</td></tr>" + 
					"<tr><td>아이디</td><td>" + id +"</td></tr>" + 
					"<tr><td>패스워드</td><td>" + pw +"</td></tr>" + 
					"<tr><td>이름</td><td>" + name +"</td></tr>" + 
					"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
					
					id2 = x[1].id
					pw2 = x[1].pw
					name2 = x[1].name
					tel2 = x[1].tel //json에서 tel키로 값을 추출
					table2 = "<ul><li>" + id2 +"</li>" + 
					"<li>" + pw2 +"</li>" + 
					"<li>" + name2 +"</li>" + 
					"<li>" + tel2 +"</li></ul>"
					$('#result').append(table)
					$('#result').append(table2)
				}// success
			})// ajax
		})// b1
		
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url : "jsonResponse5",
				
				success: function(x) {
					lati = x.lati
					longi = x.longi
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(lati, longi), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };

				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(lati, longi); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
					
				}
			})
		})
		
	})// $
	
</script>
</head>
<body>
<button id="b1">MemberVO 받아오기</button><br>
<button id="b2">MemberVO 리스트 받아오기</button>
<button id="b3">코엑스 위치 지도에 표시하기</button>
<hr color="pink">
<div id='result'>

</div>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ee295b2985001fafd6b9bd5c91c42a32"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
</body>
</html>