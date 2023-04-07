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
		$.ajax({
			url : "list2",
			success: function(x) {
				$('#result').append(x)
			}
		})
		$('#b1').click(function() {
			//기존의 것 삭제됨.
			$('#result').empty()
			$.ajax({
				url : "list5",
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list6",
				data : {
					bbsno : 1
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list7",
				data : {
					bbsno : 20
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one5",
				data : {
					id : "apple"
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b5').click(function() {
			$('#result').empty()
			$.ajax({
				url : "one6",
				data : {
					no : 1
				},
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b6').click(function() {
			$('#result').empty()
			$.ajax({
				url : "list8",
				success : function(x) {
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b7').click(function() {
			$('#result').empty()
			$.ajax({
				url : "update2_ajax",
				data : {
					no : $("#no").val(),
					content : $("#content").val()
				},
				success : function(x) {
					alert("수정완료!")
					document.location.reload() 
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b8').click(function() {
			$('#result').empty()
			$.ajax({
				url : "delete2_ajax",
				data : {
					no : $("#delete").val()
				},
				success : function(x) {
					alert("삭제완료!")
					document.location.reload()
					$('#result').append(x)
				} //success
			}) //ajax
		})//b2
		$('#b9').click(function() {
			$.ajax({
				crossOrigin: true,
				url:'http://api.openweathermap.org/data/2.5/weather?q=seoul&units=metirc&lang=kr&appid=43238037f8f84c1b9d70369513a425e6',
				dataType : 'json',
				success: function(x){
					console.log(x);
					$('#result').html("위치"+x.name+"<br>"+
							"날씨"+x.weather[0].description+"<br>"+
							"풍속"+x.wind.speed+"<br>"+
							"최고 기온"+x.main.temp_max+"<br>"+
							"최저 기온"+x.main.temp_min+"<br>"+
							"체감 온도"+x.main.feels_like+"<br>"+
							"구름"+x.clouds.all+"<br>")
				}
				
			})
		})
	})//$
</script>
</head>
<body>
<button id="b1">bbs리스트 가지고 오기</button>
<button id="b2">bbs번호 1번 댓글 리스트 가지고 오기</button>
<button id="b3">bbs번호 20번 댓글 리스트 가지고 오기</button>
<hr color="pink">
<button id="b4">member id가 apple인 사람의 가지고 오기</button>
<button id="b5">bbs no가 1인 게시물의 상세 정보 가지고 오기</button>
<button id="b6">member의 모든 리스트 가지고 오기</button>

<hr color="pink">
수정할 번호 :<input id="no"><br>
수정할 내용 :<input id="content"><br>
<input id="b7" type="button" value="bbs수정">

<hr color="pink">

<input id="delete"><input id="b8" type="button" value="bbs삭제">

<hr color="pink">
<button id="b9">날씨 불러오기</button>

<hr color="pink">
<div id="result" style="background: yellow">

</div>
</body>
</html>