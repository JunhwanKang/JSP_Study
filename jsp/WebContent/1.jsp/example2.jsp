<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿</title>
<style>
	.success{ color: green;}
	.fail{ color: red;}
</style>
</head>
<body>
<%
	int result = (int)(Math.random()*101);
	if(result>=70){
		out.print("<p class='success'>합격</p>");
	} else {
		out.print("<p class='fail'>불합격</p>");
	}
%>
</body>
</html>