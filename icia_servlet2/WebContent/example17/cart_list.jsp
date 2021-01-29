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
	<c:forEach items="${cart}" var="product">
		<li>${product}</li>
	</c:forEach>
	<a href="/icia_servlet2/example17/product_list">상품 페이지로</a>
</body>
</html>