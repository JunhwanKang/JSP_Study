<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session : 사용자마다 가지는 서버측 저장 공간</title>
</head>
<body>
	<%= session.isNew()%>
	<%= session.getMaxInactiveInterval()%>
	<%= session.getCreationTime() %>
	<% session.invalidate(); %>
</body>
</html>