<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>������ ����</title>
</head>
<body>
	���� ���� �׽�Ʈ �������Դϴ�.<hr>
	���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.<br>
	[<%=session.getAttribute("Grade") %>]�������� ���� ���Դϴ�.<hr>
	���� ���Ǿ��̵�� <h2>[<%=session.getId() %>]</h2>�Դϴ�.<hr>
</body>
</html>