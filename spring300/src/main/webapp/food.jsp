<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> Friday </h3>
<hr color="#964b00">
<form action="insert44" method="get">
	아이디 : <input name="id" value="하이">
	비밀번호 : <input name="pw" value="3242" ><br>
	이름 : <input name="name" value="김아무개"><br>
	선호하는음식 : <input name="favorite" value="양식"><br>
	<button type="submit" >회원가입</button>
</form>
<hr color="#964b00">
<h3>수정 화면입니다. </h3>
<form action="update44" method="get">
	아이디 : <input name="id" value="yang"><br>
	패스워드 : <input name="pw" value="12342"><br>
	이름 : <input name="name" value="콩김무개"><br>
	선호하는 음식 : <input name="favorite" value="김식"><br>
	<button type="submit">수정 완료</button>
</form>
<hr color="#964b00">
<h3>삭제 화면입니다. </h3>
<form action="delete44" method="get">
	id : <input name="id" ><br>
	<button type="submit">탈퇴 완료</button>
</form>
<hr color="#964b00">
<a href="list44">회원 정보 리스트 확인하기</a><br>
<form action="one44" method="get">
	아이디 : <input name="id" value="yang" ><br>
	<button type="submit" >지정 회원 검색</button>
</form>
</body>
</html>
</body>
</html>