<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<html>
	<head>
		<title>include 속성 예제</title>
	</head>
	<body>
		<%@ include file = "includedHTML.html" %>
		<h1>Hello! include!</h1>
		<%@ include file = "includedJSP.jsp" %>
	</body>
</html>