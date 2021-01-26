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
	if(session.getAttribute("username")==null){
		out.print("<a href='/jsp/2.jsp/login3/login.jsp'>로그인</a>");
	} else {
		out.print(session.getAttribute("username")+"님 환영합니다.");
		out.print("<a href='/jsp/2.jsp/login3/logout.jsp'>로그아웃</a>");
	}
%>
</body>
</html>