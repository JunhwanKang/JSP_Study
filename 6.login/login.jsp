<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인 페이지는 로그인한 사용자는 접근할 수 없다
	if(session.getAttribute("username")!=null){
		response.sendRedirect("main.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		var msg = location.search;
		if(msg!="")
			alert("로그인에 실패했습니다.");
		$("#loginForm").on("click", "#login", function(){
			$("#username_msg").text("");
			$("#password_msg").text("");
			if($("#username").val()==""){
				$("#username_msg").text("아이디는 필수 입력입니다.").css("color", "red");
				return;
			}
			if($("#password").val()==""){
				$("#password_msg").text("비밀번호는 필수 입력입니다.").css("color", "red");
				return;
			}
			$("#loginForm").submit();
		});
	});
</script>
</head>
<body>
	<form action="login_process.jsp" method="post" id="loginForm">
		<div class="form-group">
      		<label for="username">아이디:</label>
      		<span id="username_msg"></span>
      		<input type="text" class="form-control" id="username" placeholder="아이디 입력" name="username">
    	</div>
		<div class="form-group">
      		<label for="password">비밀번호:</label>
      		<span id="password_msg"></span>
      		<input type="password" class="form-control" id="password" placeholder="비밀번호 입력" name="password">
    	</div>
    	<button type="button" class="btn btn-default" id="login">로그인</button>
	</form>
</body>
</html>