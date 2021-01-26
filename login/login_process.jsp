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
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String loginId = "spring";
	String loginPwd = "1234";
	if(username==null || password==null){
		response.sendRedirect("/jsp/login/login.jsp?error");
	} else if(username.equals(loginId) && password.equals(loginPwd)){
		session.setAttribute("username", username);
		response.sendRedirect("/jsp/login/main.jsp");
	} else {
		response.sendRedirect("/jsp/login/login.jsp?error");
	}
%>
</body>
</html>