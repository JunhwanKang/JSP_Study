<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>������ ����</title>
</head>
	<%
		session.setAttribute("ID", "TestID");
		session.setAttribute("Grade", "������");
	%>
<body>
	���� ���� �׽�Ʈ �������Դϴ�.<hr>
	���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.<br/>
	[<%=session.getAttribute("Grade") %>]�������� ���� ���Դϴ�.<hr/>
	���� ���� ���̵�� <h2>[<%=session.getId() %>]</h2>�Դϴ�.<hr/>
	<form action = "SessionInvalidatePerform.jsp" method = "post">
		<input type = "submit" value = "���� ����">
	</form>
</body>
</html>