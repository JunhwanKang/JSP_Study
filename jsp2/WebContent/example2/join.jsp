<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$(".container").on("blur", "#username", function(){
			var $username = $("#username").val();
			if($username==""){
				$("#username_msg").text("아이디는 필수 입력입니다.").css("color", "red").css("font-size", "0.75em");
				return;				
			}
			var params = {
					username : $username
			}
			$.ajax({
				url: "/jsp2/user/id_check",
				method: "get",
				data: params,
				success: function (result) {
					if(result=="true")
						$("#username_msg").text("사용 가능한 아이디입니다.").css("color", "green").css("font-size", "0.75m");
					else
						$("#username_msg").text("사용 불가능한 아이디입니다.").css("color", "red").css("font-size", "0.75m");
				}, error: function (response){
					console.log(response);
				}
			});
		});
		$(".container").on("blur", "#email", function(){
			var $email = $("#email").val();
			if($email==""){
				$("#email_msg").text("이메일은 필수 입력입니다.").css("color", "red").css("font-size", "0.75em");
				return;
			}
			$.ajax({
				url: "/jsp2/user/email_check?email="+ $email,
				success: function(result){
					if(result=="true")
						$("#email_msg").text("사용 가능합니다.").css("color","green").css("font-size","0.75em");
					else
						$("#email_msg").text("사용 불가능합니다.").css("color","red").css("font-size","0.75em");
				}, error: function(response){
					console.log(response);
				}
			})
		});
		$(".container").on("blur", "#pwd", function(){
			$("#pwd_msg").text("");
			if($("#pwd").val()==""){
				$("#pwd_msg").text("비밀번호는 필수 입력입니다.").css("color", "red").css("font-size", "0.75em");
			}
			
		});
		$(".container").on("blur", "#pwd2", function(){
			$("#pwd2_msg").text("");
			var $password = $("#pwd").val();
			var $password2 = $("#pwd2").val();
			if($password != $password2){
				$("#pwd2_msg").text("비밀번호가 일치하지 않습니다.").css("color", "red").css("font-size", "0.75em");
				$("#pwd2").val("");
				$("#pwd2").focus();
				
			}
		});	
	});
</script>
</head>
<body>
	<div class="container">
		<h2>회원가입</h2>
		<form action="/jsp2/user.join">
			<div class="form-group">
				<label for="username">아이디:</label>
				<span id="username_msg"></span>
				 <input type="text" class="form-control" id="username" placeholder="아이디 입력" name="username">
			</div>
			<div class="form-group">
				<label for="email">이메일:</label> 
				<span id="email_msg"></span>
				<input type="email" class="form-control" id="email" placeholder="이메일 입력" name="email">
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호:</label>
				<span id="pwd_msg"></span>
				 <input type="password"	class="form-control" id="pwd" placeholder="비밀번호 입력" name="pwd">
			</div>
			<div class="form-group">
				<label for="pwd2">비밀번호 확인:</label>
				<span id="pwd2_msg"></span>
				 <input type="password" class="form-control" id="pwd2" placeholder="비밀번호 재입력" name="pwd2">
			</div>
			<button type="submit" class="btn btn-default">가입</button>
		</form>
	</div>
</body>
</html>