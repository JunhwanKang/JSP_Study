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
		if(queryString == "?error")
			alert("비밀번호를 확인하지 못했습니다");
	})
</script>
</head>
<body>
	<form action="/shop/sboard/user/password_check" method="post">
		비밀번호 : <input type="password" name="password"><br>
		<button>비밀번호 확인</button>
	</form>
</body>
</html>