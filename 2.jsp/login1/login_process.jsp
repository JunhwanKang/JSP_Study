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
	String loginId = "spring";
	String loginPwd = "1234";
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(loginId.equals(id) && loginPwd.equals(password)){
		session.setAttribute("id", id);
		response.sendRedirect("/jsp/2.jsp/login1/main.jsp");
	} else{
		response.sendRedirect("/jsp/2.jsp/login1/login.jsp");
	}
%>
</body>
</html>