<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	�����ϰ� �α׾ƿ��Ǿ����ϴ�. �̿��� �ּż� �����մϴ�.<hr/>
	�ٽ� �α��� �Ͻ÷��� 
	<%
		pageContext.include("/SessionLogin.jsp");
	%>
	<hr/>
	<form action = "SessionLogin.jsp" method = "post">
		<input type = "submit" value = "ù ȭ������">
	</form>
</body>
</html>