<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원가입 화면입니다</h3>
<hr color="red">
<form action="insert.jsp" method="get">
아이디 : <input name="id" value="apple"><br>
패스워드 : <input name="pw" value="1234"><br>
이름 : <input name="name" value="yang"><br>
전화번호 : <input name="tel" value="010"><br>
<button type="submit">서버로 전송</button>
</form>
<button type="button">먹통버튼(아무 기능이 없음)</button>
</body>
</html>