<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	<%
		if(session != null)
			session.invalidate();
		response.sendRedirect("http://localhost:8083/Chap08/SessionLogout.jsp");
	%>
</body>
</html>