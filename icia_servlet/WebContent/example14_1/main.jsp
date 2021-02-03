<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	작업결과 : ${result}
	<h1>작업을 선택하세요</h1>
	<ul>
		<li><a href="/icia_servlet/example14_1/sum">덧셈(자체적으로 결과 출력)</a></li>
		<li><a href="/icia_servlet/example14_1/sub">뺄셈</a></li>
		<li><a href="/icia_servlet/example14_1/mul">곱셈</a></li>
	</ul>
</body>
</html>