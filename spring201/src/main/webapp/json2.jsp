<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 스크릿트릿
	JSONObject json = new JSONObject();
	json.put("name", "hong"); // {name : hong}
	json.put("age", 100); // {age : 100}
	json.put("id", "apple"); // {id : apple}

	JSONObject json2 = new JSONObject();
	json2.put("name", "yang"); // {name : hong}
	json2.put("age", 28); // {age : 100}
	json2.put("id", "cute"); // {id : apple}
	
	// 두개를 한번에 묶어서 보내야 하므로 '배열' 을 사용한다.
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	

	%> <%=array.toJSONString() %>