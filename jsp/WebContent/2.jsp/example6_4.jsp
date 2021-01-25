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
	int val1 = Integer.parseInt(request.getParameter("val1"));
	int val2 = Integer.parseInt(request.getParameter("val2"));
	int result = val1 + val2;
	// 작업 결과를 저장한다.
	request.setAttribute("result", result);
%>
작업 결과 : ${result }
</body>
</html>