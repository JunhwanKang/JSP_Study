<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>������ ����</title>
</head>
<body>
	<%
		if(session != null)
			session.invalidate();
		response.sendRedirect("http://localhost:8083/Chap08/SessionInvalidateResult.jsp");
	%>
</body>
</html>