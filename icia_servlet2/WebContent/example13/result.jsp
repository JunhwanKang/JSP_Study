<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 ${dan}단</h1>
	<c:forEach begin="1" end="9" var="i">
		<li>${dan} * ${i} = ${dan*i}</li>
	</c:forEach>
</body>
</html>