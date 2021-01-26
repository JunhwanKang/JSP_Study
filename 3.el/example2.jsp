<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("id", "spring");
	session.setAttribute("username", "summer");
	application.setAttribute("name", "홍길동");
%>
<h1>저장 영역을 지정해서 출력</h1>
${requestScope.id }<br>
${sessionScope.username }<br>
${applicationScope.name }
<h1>저장 영역을 생략해서 출력</h1>
${id }<br>
${username }<br>
${name}

</body>
</html>