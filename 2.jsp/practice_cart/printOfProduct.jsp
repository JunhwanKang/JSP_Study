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
	if(session.getAttribute("cart")==null){
		out.print("장바구니가 비었습니다");
	} else {
		list = (List<String>)session.getAttribute("cart");
		for(String p : list)
			out.print(p+"<br>");
	}
%>
<a href="list.jsp">상품 리스트로</a>
</body>
</html>