<%@page import="com.multi.mvc300.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background: yellow;
}

td {
	width: 100px;
	text-align: center;
}

.top {
	background: black;
	color: white;
}

.down {
	background: lime;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td class="top">아이디</td>
			<td class="top">비밀번호</td>
			<td class="top">이름</td>
			<td class="top">선호하는 음식</td>
		</tr>

		<c:forEach items="${list}" var="bag"> 

<tr>
				<td class="down">${bag.id}</td>
				<td class="down">${bag.pw}</td>
				<td class="down">${bag.name}</td>
				<td class="down">${bag.favorite}</td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>