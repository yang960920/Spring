<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$("#b1").click(function() {
			$.ajax({
				url : "movie",
				data : {
					title : $('#title').val(),
					price : $('#price').val(),
					people : $('#people').val()
			},
				success : function(x) {
					$('#result').append(x + "<br>")
			},
				error : function() {
					alert('movie요청 실패!')
			}
		})
		
	})//b1	
		$("#b2").click(function() {
			$.ajax({
				url : "fruit",				
				success : function(x) {
					$('#result').append(x + "<br>")
			},
				error : function() {
					alert('fruit요청 실패!')
			}
		})
		
	})//b1	
		$("#b3").click(function() {
			$.ajax({
				url : "tour",				
				success : function(x) {
					$('#result').append(x + "<br>")
			},
				error : function() {
					alert('tour요청 실패!')
			}
		})
		
	})//b1	
})//$	

</script>
</head>
<body>
영화 제목 : <input id="title" value="테넷"><br>
영화 관람료 : <input id="price" value="10000"><br>
인원수 : <input id="people" value="2"><br>
<input id="b1" type="button" value="영화관람확인"><br>
<input id="b2" type="button" value="좋아하는과일확인"><br>
<input id="b3" type="button" value="가고싶은여행지확인"><br>
<hr color="pink">
<div id="result"></div>

</body>
</html>