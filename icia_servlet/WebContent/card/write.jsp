<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>명함 추가 페이지</h1>
	<form action="/icia_servlet/card/write" method="post">
		이름 : <input type="text" name = "name"><br>
		전화 : <input type="text" name = "tel"><br>
		<button>추가</button>
	</form>
</body>
</html>