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
	int val1 = Integer.parseInt(request.getParameter("val1"));
	int val2 = Integer.parseInt(request.getParameter("val2"));
	String op = request.getParameter("op");
	String operator = "";
	int result = 0;
	
	if(op.equals("+")==true){
		operator = "덧셈";
		result = val1 + val2;
	}else if(op.equals("-")==true){
		operator = "뺄셈";
		result = val1 - val2;
	}else if(op.equals("*")==true){
		operator = "곱셈";
		result = val1 * val2;
	}
%>
<p><%=operator %> 결과 : <%= result %></p>
</body>
</html>