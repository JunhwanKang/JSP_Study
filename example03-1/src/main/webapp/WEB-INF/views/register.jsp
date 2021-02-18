<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/member/register" method="post" enctype="multipart/form-data">
		<input type="text" name="id" value="spring"><br>
		<input type="password" name="password" value="1234"><br>
		<input type="text" name="email" value="spring@naver.com"><br>
		<input type="date" name="birthday"><br>
		<input type="file" name="sajin"><br>
		<button>가입</button>
 	</form>
</body>
</html>