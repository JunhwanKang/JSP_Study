<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>로그인완료 페이지</title>
</head>
<body>
	<%
		String saveId = request.getParameter("saveId");
		Cookie cookieSaveId = new Cookie("saveId",saveId);	
		response.addCookie(cookieSaveId);
		session.setAttribute("id", request.getParameter("id"));
	%>
	
	로그인 되었습니다.<br>
	[<%=request.getParameter("id") %>]님 환영합니다.
	다시로그인하시려면 아래를 눌러주세요.<hr>
	<form action = "MemberLogin.jsp" method = "post">
		<input type = "submit" value = "로그인 화면으로 이동">
	</form>
</body>
</html>