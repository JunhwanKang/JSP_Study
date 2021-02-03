<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/icia_servlet/example10/join" method="post">
		아이디: <input type="text" name="username"><br>
		비밀번호 : <input type="password" name="password"><br>
		이메일 : <input type="text" name="email"><br>
		생일 : <input type="date" name="birthday"><br>
		<button>가입</button>
	</form>
</body>
</html>