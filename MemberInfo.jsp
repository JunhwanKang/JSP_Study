<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body>
	<form action = "MemberInfoResult.jsp" method = "post">
		<table>
			<tr>
				<td align = "left">이름</td>
				<td><input type = "text" name = "name"></td>
			</tr>	
			<tr>
				<td align = "left">성별</td>
				<td>
					<select name = "gender">
					<option>남자</option>
					<option>여자</option>
					</select>				
				</td>
			</tr>	
			<tr>
				<td align = "left">아이디</td>
				<td><input type = "text" name = "id"></td>
			</tr>	
			<tr>
				<td align = "left">비밀번호</td>
				<td><input type = "password" name = "pw"></td>
			</tr>	
			<tr>
				<td align = "left">비밀번호 확인</td>
				<td><input type = "password" name = "Repw"></td>
			</tr>	
			<tr>
				<td align = "left">주소</td>
				<td><input type = "text" name = "address"></td>
			</tr>	
			<tr>
				<td align = "left">전화번호</td>
				<td><input type = "text" name = "phone"></td>
			</tr>	
			<tr>
				<td align = "left">이메일 주소</td>
				<td><input type = "text" name = "email"></td>
			</tr>	
		</table><hr>
		<input type = "submit" value = "회원가입완료">
				
	</form>	
</body>
</html>