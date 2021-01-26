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
	String id = "rkdwnsghks";
	String pwd = "1111";
	String userId = request.getParameter("id");
	String userPwd = request.getParameter("pwd");
	if(id.equals(userId) && pwd.equals(userPwd)){
		session.setAttribute("id", userId);
		response.sendRedirect("main.jsp");
	}else{
		out.print("아이디나 비밀번호가 틀립니다."+"<br>");
		out.print("<a href='main.jsp'>다시 로그인</a>");
	}
%>
</body>
</html>