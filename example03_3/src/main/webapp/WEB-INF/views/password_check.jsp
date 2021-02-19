<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>${msg}</div>
	<form action="/user/password_check" method="post">
		비밀번호:<input type="password" name="password"><br>
		<button>비밀번호 확인</button>
	</form>
</body>
</html>