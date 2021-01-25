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
	List<String> list = null;
	if(session.getAttribute("cart")==null) {
		out.print("장바구니가 비었습니다.");
	} else{
		list = (List<String>)session.getAttribute("cart");
		out.print("<ul>");
		for(String product:list){
			out.print("<li>"+product+"</li>");
		}
		out.print("</ul>");
	}
%>
	<a href = "/jsp/2.jsp/cart2/products.jsp">품목 리스트로 이동</a>
</body>
</html>