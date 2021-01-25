<%@ page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp scriptlet(스크립트릿)</title>
</head>
<%
	LocalDateTime time = LocalDateTime.now();
	StringBuffer buffer = new StringBuffer();
	buffer.append(time.getHour());
	buffer.append("시 ");
	buffer.append(time.getMinute());
	buffer.append("분 ");
	buffer.append(time.getSecond());
	buffer.append("초 ");
	out.print("<p>"+buffer.toString()+"</p>");
%>
<body>
	
</body>
</html>