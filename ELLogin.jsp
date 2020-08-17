<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body>
	아이디와 비밀번호를 입력하세요.
	<form action = "LoginedTest.jsp" method = "post">
		<table  border = "1">
			<tr>
				<td align = "center">아이디</td>
	<%
		String saveId = null;
		String id = null;
		
		if(session.getAttribute("saveId")!=null && session.getAttribute("saveId").equals("save")){
			saveId = "save";
	%>
			
		
				<td><input type = "text" name = "id" value = "${cookie.id.value }"/></td>
	<%
		}else{
	%>
				<td><input type = "text" name = "id"></td>
	<% 		
		}
		
	%>
			</tr>
			<tr>
				<td align = "center">비밀번호</td>
				<td><input type = "password" name = "password"></td>
			</tr>
			<tr>
				<td colspan = "2" align = "right">
				<input type = "checkbox" name = "saveId" value = "save"<%=(saveId==null?"":"checked=\"checked\"")%>/>아이디저장
				</td>
			</tr>
				<tr>
					<td colspan = "2" align = "right">
					<input type = "submit" value = "로그인">
				</td>
			</tr>		
		</table>`
	</form>

</body>
</html>