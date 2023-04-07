<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  computer호출했을 때 결과담는 곳!
-->
<table border=1>
<tr>
	<td>영화제목</td>
	<td>관람료</td>
	<td>총인원</td>
</tr>
<tr>
	<td>${bag.title}</td>
	<td>${bag.price}</td>
	<td>${bag.people}</td>
</tr>
<tr>
	<td>총합계</td>
	<td colspan="2">${bag.sum}</td>
</tr>
</table>