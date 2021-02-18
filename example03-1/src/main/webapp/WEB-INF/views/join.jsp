<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/sample3/user/join" method="post" enctyp="multipart/form-data">
		 아이디 : <input type="text" name="username"><br>
		 비밀번호 : <input type="password" name="password"><br>
		 이메일 : <input type="text" name="email"><br>
		 사진 : <input type="file" name="sajin"><br>
		 <button>가입</button>
	</form>
</body>
</html>