<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- content delivery network : CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({				
				url:"json.jsp",				
				success: function(json) {
					$('#result').append(json)
				}
			})
		})//b1
		$('#b2').click(function() {
			$.ajax({
				url: "json2.jsp",
				dataType : "json",
				success: function(json) {
					age1 = json[1].age
					name1 = json[1].name
					id1 = json[1].id
					$('#result').append(age1 + " " + name1 + " " + id1 + "<br>")
					
				} //success
			}) //ajax
		})//b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json3.jsp",
				dataType : "json",
				success: function(json) {
					today = json.today
					temp = json.temp
					hu = json.hu
					$('#result').append(today + " " + temp + " " + hu + "<br>")
					if(today == 'rain') {
						$('#result').append("<img src=resources/img/rain.png><br>")
					}else if(today == 'sun'){
						$('#result').append("<img src=resources/img/sun.jpg><br>")
					}
				} //success
			}) //ajax
		})//b1
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url:"json4.jsp",
				success: function(json) {
					$('#result').append(json)
				}
			})
		})//b1
	})//$
	
	
	
	</script>
</head>
<body>
<button id = "b1">Json을 받아오기</button>
<button id = "b2">Jsonarray을 받아오기</button>
<button id = "b3">Json3을 받아오기</button>
<button id = "b4">Jsonarray4을 받아오기</button>
<hr color="pink">
<div id = "result"></div>
</body>
</html>