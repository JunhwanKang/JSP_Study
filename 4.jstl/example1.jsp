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
	<c:if test="${10>5}">
		10은 5보다 큽니다.
	</c:if>
	<c:if test="${5>10}">
		5는 10보다 큽니다.
	</c:if>
</body>
</html>