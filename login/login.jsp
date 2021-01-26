<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		if(location.search!="")
			alert("로그인에 실패했습니다.");
		$("#loginForm").on("click", "#loginBtn", function(){
			if($("#username").val()==""){
				alert("아이디는 필수 입력입니다.");
				return;
			}else if($("#password").val()==""){
				alert("비밀번호는 필수 입력입니다.");
				return;
			}
			$("#loginForm").submit();
		});
	});
</script>
</head>
<body>
	<form action="/jsp/login/login_process.jsp" method="post" id="loginForm">
		<input type="text" name="username" id="username"><br>
		<input type="password" name="password" id="password"><br>
		<button type="button" id="loginBtn">로그인</button>
	</form>
</body>
</html>