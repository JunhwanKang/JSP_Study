<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	request.setAttribute("dataname", "request Attribute");
	application.setAttribute("dataname","application Attribute");
%>
<html>
<head>
</head>
<body>
	<h3>request 내장객체의 dataname 속성값:</h3>
	[<%=request.getAttribute("dataname") %>]<hr/>
	<h3>application 내장객체의 dataname 속성값:</h3>
	[<%=application.getAttribute("dataname") %>]<hr/>
	<h3>EL에서 출력되는  dataname의 값</h3>
	[${dataname }]<hr/>
	같은 이름이 여러개 존재할 경우 범위가 작은 곳 부터 우선시 된다.
	
</body>
</html>