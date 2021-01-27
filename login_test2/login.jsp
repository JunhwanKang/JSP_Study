<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("username")!=null){
		response.sendRedirect("main.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#div{
		width: 10%;
		margin: 0px auto;
	}
	
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		if(location.search != "")
			alert("아이디 또는 비밀번호가 틀렸습니다.");
		$("#login_btn").on("click", function() {
			$("#id_msg").text("");
			$("#pwd_msg").text("");
			if ($("#username").val() == "") {
				$("#id_msg").text("필수 입력입니다.").css("color", "red");
				return;
			} else if ($("#password").val() == "") {
				$("#pwd_msg").text("필수 입력입니다.").css("color", "red");
				return;
			}
			$("#log_form").submit();
		});
	});
</script>
</head>
<body>
<div id="div">
	<form action="login_check.jsp" method="post" id="log_form">
		<div class="form-group">
			<label for="username">아이디:</label> <input type="text"
				class="form-control" id="username" name="username">
			<span id="id_msg"></span>
				
		</div>
		<div class="form-group">
			<label for="password">비밀번호:</label> <input type="password"
				class="form-control" id="password" name="password">
			<span id="pwd_msg"></span>
		</div>
		<button type="button" id="login_btn">로그인</button>
	</form>
</div>
</body>
</html>