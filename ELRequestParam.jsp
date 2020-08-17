<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>데이터 받아오기</title>
</head>
<body>
	이름: ${param.name }<br/>
	선택 언어: ${paramValues.language[0] }
		   ${paramValues.language[1] }
		   ${paramValues.language[2] }
		   ${paramValues.language[3] }
</body>
</html>