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
		 ���̵� : <input type="text" name="username"><br>
		 ��й�ȣ : <input type="password" name="password"><br>
		 �̸��� : <input type="text" name="email"><br>
		 ���� : <input type="file" name="sajin"><br>
		 <button>����</button>
	</form>
</body>
</html>