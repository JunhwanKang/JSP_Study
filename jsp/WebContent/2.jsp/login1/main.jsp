<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		로그인 안했으면 로그인으로 이동링크를 보여준다
		로그인 했으면 ~님 환영합니다라고 출력 
	 -->
<%
	if(session.getAttribute("id")==null){
		out.print("<a href='/jsp/2.jsp/login1/login.jsp'>로그인 이동</a>");
	} else{
		out.print(session.getAttribute("id")+"님 환영합니다");
	}
%>
</body>
</html>