<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>${msg}</div>
	<c:if test="${username eq null}">
		<a href="/user/join">ȸ������</a>
		<a href="/user/login">�α���</a>
	</c:if>
	<c:if test="${username ne null}">
		<a href="/user/info">������ ����</a>
	</c:if>
</body>
</html>