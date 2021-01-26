<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

</script>
</head>
<body>
<%
	if(session.getAttribute("username")==null){
		out.print("<a href='login.jsp'>로그인</a>");
	} else {
		out.print(session.getAttribute("username")+"님 환영합니다.<br>");
		out.print("<a href='logout.jsp'>로그아웃</a>");
	}
%>
</body>
</html>