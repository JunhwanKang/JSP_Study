<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Session�� ��ȿ�ð�</title>
</head>
<body>
	������ ��ȿ�ð� ���� ������ �Դϴ�.<hr>
	���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.<br>
	[<%=session.getAttribute("Grade") %>]�������� ���� ���Դϴ�.<hr>
	���� ���Ǿ��̵�� <h2>[<%=session.getId() %>]</h2>�Դϴ�.<hr>
	���� ������ �ִ� ��ȿ�ð��� [<%=session.getMaxInactiveInterval() %>]�� �Դϴ�.
</body>
</html>