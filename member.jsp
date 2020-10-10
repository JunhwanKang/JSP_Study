<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
</head>
<body>
<h2>회원가입을 해주세요.</h2>


	<form action="memberCheck.jsp" method="post"> 
		<table>
			<tr>
				<td align="center" colspan="2">회원가입</td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td><input type="text" name="name" required placeholder="name"></td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id" required placeholder="id"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pwd" required placeholder="password"></td>
			</tr>
			<tr>
				<td align="center">비밀번호 확인</td>
				<td><input type="password" name="chkPwd" required placeholder="password chk"></td>
			</tr>
			<tr>
				<td align="center">전화번호</td>
				<td><input type="text" name="phone" required placeholder="- 빼고 입력"></td>
			</tr>
			<tr>
				<td align="right" colspan="2"><input type="submit" value="가입하기"></td>
			</tr>
		</table>
	</form>
	<a href = "http://localhost:8090/Login/login.jsp">로그인 페이지로</a>
</body>
</html>