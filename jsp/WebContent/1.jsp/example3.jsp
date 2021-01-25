<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 - for문</title>
</head>
<body>
<%
	int sum = 0;
	for(int i=1; i<=100; i++){
		sum+=i;
	}
	out.print("<div><p>합계: "+sum+"</p></div>");
%>
</body>
</html>