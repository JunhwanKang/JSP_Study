<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	request.setCharacterEncoding("utf-8");
	List<String> cart;
	if(session.getAttribute("cart")==null){
		cart = new ArrayList<>();
	} else {
		session.setAttribute("cart", cart);
	}
%>
</body>
</html>