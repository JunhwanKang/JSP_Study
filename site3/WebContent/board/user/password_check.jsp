<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function passwordCheck(){
		if(location.search!=""){
			alert("비밀번호가 일치하지 않습니다");
		}
		if($("#password").val()==""){
			$("#passwordCheck_msg").text("비밀번호를 입력해주세요.").css("font-size","0.75em").css("color", "red");
			return false
		}else{
			$("#passwordCheck_msg").text("");
			return true;
		}
	}
	$(document).ready(function(){
		$("#password").on("blur", passwordCheck);
		$("#check").on("click", function(){
			var result = passwordCheck();
			if(result==true)
				$("#checkForm").submit();
		});
	});
</script>
</head>
<body>
	<form action="/site3/board/user/password_check" method="post" id="checkForm">
		<div class="form-group">
			<label for="password">비밀번호:</label> 
			<span id="passwordCheck_msg"></span> 
			<input type="password" class="form-control" id="password" name="password">
		</div>
		<button type="button" class="btn btn-primary" id="check">비밀번호 확인</button>
	</form>
</body>
</html>