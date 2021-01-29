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
	<ul>
		<li>당신의 이름 : ${irum }</li>
		<li>당신의 성별 : ${gender }</li>
		<li>당신의 취미
			<ul>
				<c:forEach items="${hobby}" var="h">
					<li>${h }</li>
				</c:forEach>
			</ul>
		</li>
	</ul>
</body>
</html>