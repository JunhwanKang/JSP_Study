<%@page import="java.util.ArrayList"%>
<%@page import="mart.Product"%>
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
	int pno = Integer.parseInt(request.getParameter("pno"));
	// 세션에서 꺼내면 Object로 넘어오기 때문에 형변환해준다. 
	List<Product> list = (List<Product>)session.getAttribute("list");
	
	List<Product> cart=null;
	if(session.getAttribute("cart")!=null)
		cart = (List<Product>)session.getAttribute("cart");
	else
		cart = new ArrayList<>();
	
	for(Product p:list){
		if(p.getPno()==pno){
			cart.add(p);
		}
	}
	session.setAttribute("cart", cart);
	RequestDispatcher rd = request.getRequestDispatcher("cart_print.jsp");
	rd.forward(request, response);
%>
</body>
</html>