<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body>
	<%
		String id = request.getParameter("id");
		Cookie cookie = new Cookie("id",id);
		response.addCookie(cookie);
		String saveId = request.getParameter("saveId");
		session.setAttribute("saveId", saveId);
	%>
	로그인 완료되었습니다. <br/>
	<%=request.getParameter("id") %>님 환영합니다.
	<form action = "LoginTest.jsp" method = "post">
		<input type = "submit" value = "첫 화면으로">
	</form>
</body>
</html>