<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	Cookie cookie = new Cookie("cookieName","cookieValue");
	response.addCookie(cookie);
%>
<html>
<head>
</head>
<body>
	쿠키생성이 완료되었습니다.<hr/>
	<form action = "ELPrintCookie.jsp" method = "post">
		<input type = "submit" value = "정보 보기">
	</form>
</body>
</html>