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
		var querystring = location.search;    // ?state=null
		if(querystring!=""){
			//var msg = querystring.substr(1);  // state=null
			var msg = querystring.substr(7);  // null
			if(msg=="null")
				alert("아이디와 비밀번호는 필수 입력입니다.");
			else if(msg=="fail")
				alert("로그인에 실패했습니다.");
		}
		
		$("#login_btn").on("click",function(){
			var $username = $("#username").val();
			if($username==""){
				alert("아이디는 필수 입력입니다.");
				return;
			}
			var $password = $("#password").val();
			if($password==""){
				alert("비밀번호는 필수 입력입니다.");
				return;
			}
			$("#login_form").submit();
		})
	});
</script>
</head>
<body>
	<form action="/jsp/2.jsp/login3/login_process.jsp" method="post" id="login_form">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>	
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" id="login_btn">로그인</button></td>
			</tr>		
		</table>
	</form>
</body>
</html>