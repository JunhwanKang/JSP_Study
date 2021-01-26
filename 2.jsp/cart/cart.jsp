<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
	List<String> cart = null;
	request.setCharacterEncoding("utf-8");
	if(session.getAttribute("cart")==null){
		cart = new ArrayList<>();
	}else{
		// 세션에서 값을 꺼내기 전에 반드시 null 여부를 확인해야 함
		// request의 경우 값을 꺼내서 EL로 바로 출력
		// session의 경우 값을 꺼내서 작업을 수행 -> 형변환 필요
		cart = (List<String>)session.getAttribute("cart");
	}
	String product = request.getParameter("product");
	cart.add(product);
	session.setAttribute("cart", cart);
	
	response.sendRedirect("/jsp/2.jsp/cart/cart_print.jsp");
%>
</body>
</html>