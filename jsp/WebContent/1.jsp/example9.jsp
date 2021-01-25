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
	String s1 = request.getParameter("val1");	 
	String s2 = request.getParameter("val2");
	int val1 = Integer.parseInt(s1);
	int val2 = Integer.parseInt(s2);
	int result = val1+val2;	
%>
<p>덧셈 결과 : <%=result %></p>
</body>
</html>