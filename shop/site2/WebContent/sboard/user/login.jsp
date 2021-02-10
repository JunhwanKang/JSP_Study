<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		if(location.search!="")
			alert("로그인에 실패했습니다");
		$("#login").on("click", function(){
			if($("#username").val()==""){
				alert("아이디는 필수 입력입니다");
				return;
			} else if($("#password").val()==""){
				alert("비밀번호는 필수 입력입니다");
				return;
			}
			$("#form").submit();
		});
	});
</script>
</head>
<body>
	<form action="/site2/sboard/user/login" method="post" id="form">
		아이디: <input type="text" name="username" id="username"><br>
		비밀번호: <input type="password" name="password" id="password"><br>
		<button type="button" id="login">로그인</button>
	</form>
</body>
</html>