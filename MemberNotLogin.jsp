<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>다시 로그인</title>
</head>
<body>
	아이디와 비밀번호가 일치하지 않습니다. 다시 
	<%
		pageContext.include("/MemberLogin.jsp");
	%>
</body>
</html>