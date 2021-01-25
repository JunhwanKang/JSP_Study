<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	LocalDateTime now = LocalDateTime.now();
	String time = now.getHour() + "시 " + now.getMinute() + "분 " + now.getSecond() + "초입니다.";
%>
	<h1>현재 시각</h1>
	<p>현재 시각은<%= time %></p>
	
</body>
</html>
</body>
</html>