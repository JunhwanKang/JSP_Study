<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function usernameCheck(){
		if($("#username").val()==""){
			$("#usernameCheck_msg").text("아이디는 필수 입력입니다.").css("text", "0.75em").css("color", "red");
			return false;
		}
		else{
			$("#usernameCheck_msg").text("");
			return true;			
		}
	}
	function passwordCheck(){
		if($("#password").val()==""){
			$("#pwdCheck_msg").text("비밀번호는 필수 입력입니다.").css("text", "0.75em").css("color", "red");
			return false;
		}
		else{
			$("#pwdCheck_msg").text("");
			return true;			
		}
	}
	$(document).ready(function(){
		if(location.search!="")
			alert("로그인에 실패하셨습니다");
		$("#username").on("blur", usernameCheck);
		$("#password").on("blur", passwordCheck);
		$("#login").on("click", function(){
			var result = usernameCheck() && passwordCheck();
			if(result == true)
				$("#loginForm").submit();
		});
	});
</script>
</head>
<body>
<div>
	<form action="/site3/board/user/login" method="post" id="loginForm">
		<div class="form-group">
			<label for="username">아이디:</label> 
			<span id="usernameCheck_msg"></span> 
			<input type="text" class="form-control" id="username" name="username">
		</div>
		<div class="form-group">
			<label for="username">비밀번호:</label> 
			<span id="pwdCheck_msg"></span> 
			<input type="password" class="form-control" id="password" name="password">
		</div>
		<button type="button" class="btn btn-primary" id="login">로그인</button>
	</form>
</div>
</body>
</html>