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
		cart = (List<String>)session.getAttribute("cart");
	}
	String product = request.getParameter("gift");
	cart.add(product);
	
	RequestDispatcher rd = request.getRequestDispatcher("product_print.jsp");
	rd.forward(request, response);
%>
</body>
</html>