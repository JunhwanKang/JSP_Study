<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie �� ����</title>
</head>
<body>
	<h3>Cookie Ŭ������ ����� ��Ű�� �����մϴ�.</h3>
	<%
		Cookie cookie = new Cookie("MyCookie", "MyCookie's Value");
		response.addCookie(cookie);
	%>
	<h4>��Ű ������ �Ϸ�Ǿ����ϴ�.</h4>
	<h3>������ ��Ű�� ������ҵ��� ����մϴ�.</h3>
	<h4>
		��Ű�� �̸� : <%=cookie.getName() %><hr/>
		��Ű�� �� : <%=cookie.getValue() %><hr/>
	</h4>
	<form action = "CookieValueChg.jsp" method = "post">
		<input type = "submit" value = "��Ű ���� ������">
	</form>
</body>
</html>