<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Session�� ��ȿ�ð�</title>
</head>
<body>
	<%
		session.setAttribute("ID", "TestID");
		session.setAttribute("Grade", "������");
	%>
	
	������ ��ȿ�ð� ���� �������Դϴ�.<hr>
	���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.<br>
	[<%=session.getAttribute("Grade") %>]�������� ���� ���Դϴ�.<hr>
	���� ���Ǿ��̵�� <h2>[<%=session.getId() %>]</h2>�Դϴ�.<hr>
	���� ������ ��ȿ�ð��� �����մϴ�.<hr>
	<%
		session.setMaxInactiveInterval(30);
	%>
	���� ������ �ִ� ��ȿ�ð��� [<%=session.getMaxInactiveInterval() %>]�� �Դϴ�.
</body>
</html>