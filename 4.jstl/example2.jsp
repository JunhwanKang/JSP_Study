<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setAttribute("score", 85);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<c:choose>
		<c:when test="${score>=90 }">
			<p>우수</p>
		</c:when>
		<c:when test="${score>=70 }">
			<p>합격</p>
		</c:when>
		<c:otherwise>
			<p>불합격</p>
		</c:otherwise>
	</c:choose>
</body>
</html>