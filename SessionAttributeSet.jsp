<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	<%
		session.setAttribute("ID", request.getParameter("id"));
	
		response.sendRedirect("http://localhost:8083/Chap08/SessionChk.jsp");
	%>
</body>
</html>