<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>autoFlush여부 : <%= out.isAutoFlush()%></li>
		<li>출력버퍼 크기 : <%= out.getBufferSize()%></li>
		<li>남은버퍼 크기 : <%= out.getRemaining()%></li>
	</ul>
</body>
</html>