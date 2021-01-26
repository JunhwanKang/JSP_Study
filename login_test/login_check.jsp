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
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(username==null || password==null){
		response.sendRedirect("/jsp/login_test/login.jsp?error");
	} else if(loginId.equals(username) && loginPwd.equals(password)){
		session.setAttribute("username", username);
		response.sendRedirect("/jsp/login_test/main.jsp");
	} else{
		response.sendRedirect("/jsp/login_test/login.jsp?error");
	}
%>
</body>
</html>