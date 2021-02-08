<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function irumCheck() {
		if ($("#irum").val() == "") {
			$("#irumCheck_msg").text("이름은 필수 입력입니다.").css("text",
					"0.75em").css("color", "red");
			return false;
		} else {
			$("#irumCheck_msg").text("");
			return true;
		}
	}
	function usernameCheck() {
		if ($("#username").val() == "") {
			$("#usernameCheck_msg").text("아이디는 필수 입력입니다.").css(
					"text", "0.75em").css("color", "red");
			return false;
		} else {
			$("#usernameCheck_msg").text("");
			return true;
		}
	}
	function passwordCheck() {
		if ($("#password").val() == "") {
			$("#pwdCheck_msg").text("비밀번호는 필수 입력입니다.").css("text",
					"0.75em").css("color", "red");
			return false;
		} else {
			$("#pwdCheck_msg").text("");
			return true;
		}
	}
	function passwordCheck2() {
		if ($("#password2").val() != $("#password").val()) {
			$("#pwdCheck2_msg").text("비밀번호가 일치하지 않습니다.").css(
					"text", "0.75em").css("color", "red");
			return false;
		} else {
			return true;
			$("#pwdCheck2_msg").text("");
		}
	}
	function emailCheck() {
		if ($("#email").val() == "") {
			$("#emailCheck_msg").text("이메일은 필수입력입니다").css("text",
					"0.75em").css("color", "red");
			return false;
		} else {
			$("#email_msg").text("");
			return true;
		}
	}
	$(document).ready(function() {
		$("#irum").on("blur", irumCheck);
		$("#username").on("blur", usernameCheck);
		$("#password").on("blur", passwordCheck);
		$("#password2").on("blur", passwordCheck2);
		$("#email").on("blur", emailCheck);
		$("#join").on("click", function() {
			var result = usernameCheck() && irumCheck() && passwordCheck() && passwordCheck2() && emailCheck();
			if (result == true)
				$("#joinForm").submit();
		});
	});
</script>
</head>
<form action="/site3/board/user/join" method="post" id="joinForm">
	<div class="form-group">
		<label for="irum">이름:</label> 
		<span id="irumCheck_msg"></span> 
		<input type="text" class="form-control" id="irum" name="irum">
	</div>
	<div class="form-group">
		<label for="username">아이디:</label>
		<span id="usernameCheck_msg"></span>
		<input type="text" class="form-control" id="username" name="username">
	</div>
	<div class="form-group">
		<label for="email">이메일:</label> 
		<span id="emailCheck_msg"></span> 
		<input type="text" class="form-control" id="email" name="email">
	</div>
	<div class="form-group">
		<label for="password">비밀번호:</label> 
		<span id="pwdCheck_msg"></span> 
		<input type="password" class="form-control" id="password" name="password" value="1234">
	</div>
	<div class="form-group">
		<label for="password2">비밀번호 확인:</label> 
		<span id="pwdCheck2_msg"></span>
		<input type="password" class="form-control" id="password2" value="1234">
	</div>
	<button type="button" class="btn btn-primary" id="join">가입</button>
</form>
</body>
</html>