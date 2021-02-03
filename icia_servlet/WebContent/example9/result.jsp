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
	${name }<br>
	${gender }<br>
	<ul>
		<c:forEach items="${hobby}" var="h">
			<li>${h}</li>			
		</c:forEach>
	</ul>
</body>
</html>