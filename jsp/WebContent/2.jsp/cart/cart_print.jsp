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
<ul>
<%
	if(session.getAttribute("cart")==null){
		out.print("장바구니가 비었습니다.");
	} else{
		List<String> cart = (List<String>)session.getAttribute("cart");
		for(String product : cart)
			out.print("<li>"+product+"</li>");
	}
%>
</ul>
<a href="/jsp/2.jsp/cart/list.jsp">제품 목록 페이지로</a>
</body>
</html>