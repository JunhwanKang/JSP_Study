<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
	<%
		session.setAttribute("ID", "TestID");
		session.setAttribute("Grade", "������");
	%>
<body>
	������ �Ӽ� ���� �������Դϴ�.<hr>
	���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.<br>
	[<%=session.getAttribute("Grade") %>]�������� �������Դϴ�.	
</body>
</html>