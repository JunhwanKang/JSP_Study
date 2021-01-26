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
		if(location.search != "")
			alert("아이디 또는 비밀번호가 틀렸습니다.");
		$("#login_btn").on("click", function(){
			if($("#username").val()==""){
				alert("아이디는 필수 입력입니다.");
				return;
			} else if($("#password").val()==""){
				alert("비밀번호는 필수 입력입니다.");
				return;
			}
			$("#log_form").submit();
		});
	});
</script>
</head>
<body>
	<form action="login_check.jsp" method="post" id="log_form">
		아이디: <input type="text" name="username" id="username"><br>
		비밀번호: <input type="password" name="password" id="password"><br>
		<input type="button" name="login_btn" id="login_btn" value="로그인">
	</form>
</body>
</html>