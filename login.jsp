<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>
<body>

	<form action="loginCheck.jsp" method="post">
		<table border="1">
			<tr>
				<td align="center" colspan="2">Login</td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id"></td>
			</tr>		
			<tr>	
				<td align="center">비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>		
			<tr>	
				<td align="right" colspan="2">
					<input type="submit" value="로그인">
				</td>
		</table>
		<a href = "http://localhost:8090/Login/member.jsp">회원가입</a>
	</form>
</body>
</html>