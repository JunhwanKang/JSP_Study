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
		response.sendRedirect("login.jsp?error");
	}
	else if(username.equals(loginId) && password.equals(loginPwd)){
		session.setAttribute("username", username);
		if(session.getAttribute("destination")!=null){
			//목적지를 꺼낸 후 세션에서 삭제
			String destination = (String)session.getAttribute("destination");
			session.removeAttribute("destination");
			response.sendRedirect(destination);
		} else
			response.sendRedirect("main.jsp");
	}else {
		response.sendRedirect("login.jsp?error");
	}
%>
</body>
</html>