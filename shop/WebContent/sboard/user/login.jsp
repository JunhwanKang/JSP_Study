<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var queryString = location.search;
		if(queryString=="?error")
			alert("로그인에 실패했습니다");
	});
</script>
</head>
<body>
<form action="/shop/sboard/user/login" method="post" id="form">
	아이디:<input type="text" name="username" id="username"><br>
	비밀번호:<input type="password" name="password" id="password"><br>
	<button id="login">로그인</button>
</form>
</body>
</html>