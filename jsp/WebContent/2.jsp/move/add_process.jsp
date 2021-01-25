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
	request.setAttribute("result", val1+val2);
	
	RequestDispatcher rd = request.getRequestDispatcher("/2.jsp/move/add_result.jsp");
	rd.forward(request, response);
%>
</body>
</html>