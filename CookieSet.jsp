<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie ����</title>
</head>
<body>
	<h3>Cookie Ŭ������ ����Ͽ� ��Ű�� �����մϴ�.</h3><hr/>
	<%
		Cookie cookie = new Cookie("CookieTest", "HelloCookie");
		response.addCookie(cookie);
	%>
	<h3>��Ű ������ �Ϸ�Ǿ����ϴ�.</h3>
	<form action = "CookieChk.jsp" method = "post">
		<input type = "submit" value = "��Ű Ȯ�� ������">
	</form>
</body>
</html>