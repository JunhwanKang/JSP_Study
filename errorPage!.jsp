<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>  <%--�⺻���� false�̴�. --%>
<% response.setStatus(200); %>     <%-- ������������ ���� Status404�� 500������ �߻��ϴµ� 200�� ���� �������� ��Ÿ�� 
�̰ɾȾ��� ���������� ������ Status�� �Ǳ⶧���� �����������. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���������� �Դϴ�.<br>
	<%= exception.getMessage() %>
</body>
</html>