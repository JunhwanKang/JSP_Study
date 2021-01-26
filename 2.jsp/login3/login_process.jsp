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
	// 브라우저에서 자바스크립트를 없앨 수 있기 때문에 널체크를 해야한다.
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String loginId = "spring";
	String loginPwd = "1234";
	if(username==null || password==null){
		response.sendRedirect("/jsp/2.jsp/login3/login.jsp?state=null");
	} else if(username.equals(loginId) && password.equals(loginPwd)==true){
		session.setAttribute("username", username);
		response.sendRedirect("/jsp/2.jsp/login3/main.jsp");
	} else {
		response.sendRedirect("/jsp/2.jsp/login3/login.jsp?state=fail");
	}
%>
</body>
</html>