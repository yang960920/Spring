<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 스크릿트릿
	JSONObject json = new JSONObject();
	json.put("High", "2,020"); // {name : hong}
	json.put("Low", "1,524"); // {age : 100}
	json.put("End", "2,020"); // {id : apple}

	JSONObject json2 = new JSONObject();
	json2.put("High", "29,000"); // {name : hong}
	json2.put("Low", "24,800"); // {age : 100}
	json2.put("End", "28,400"); // {id : apple}
	
	// 두개를 한번에 묶어서 보내야 하므로 '배열' 을 사용한다.
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	

	%> <%=array.toJSONString() %>