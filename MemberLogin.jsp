<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>로그인 페이지</title>
</head>
<body>
	<%
		
		Object id = null;
		String saveId = null;
		String pw = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length >0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("saveId") && cookies[i].getValue().equals("save")){
					saveId = cookies[i].getValue();
					id = session.getAttribute("id");
				}
			}
		}
	%>
	
	아이디와 비밀번호를 입력하십시오<hr>
	
	<form action = "MemberLoginChk.jsp" method = "post">
		<table border = "1">
			<tr>
				<td align = "center">아이디</td>
				<td><input type = "text" name = "id" value = "<%=(id == null? "": id) %>"></td>
			</tr>
			<tr>
				<td align = "center">비밀번호</td>
				<td><input type = "password" name = "pw"></td>
			</tr>
			<tr>
				<td colspan = "2" align = "right"><input type = "checkbox" name = "saveId" value = save
				 <%=(saveId == null? "" : "checked = \"checked\"") %>/>아이디 저장</td>
			</tr>
			<tr>
				<td colspan = "2" align = "right"><a href= "MemberInfo.jsp">[회원가입]</a>
					<input type = "submit" value = "로그인"></td>
			</tr>		
		</table>
	</form>
</body>
</html>