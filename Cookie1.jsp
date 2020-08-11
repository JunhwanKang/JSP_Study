<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>로그인 페이지</title>
</head>
<body>
	<%
		String loginStatus = null;
		String saveId = null;
		String id = null;
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i =0; i<cookies.length; i++){
				if(cookies[i].getName().equals("saveId")&& cookies[i].getValue().equals("save")){
					saveId = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("id")){
					id= cookies[i].getValue();
				}
			}
		}
		out.print(saveId);
	%>


	<form action = "Cookie2.jsp" method = "post" >
		<table border = "1">
			<tr>
				<td align = "center">아이디</td>
				<td><input type = text name = id value = "<%= (id == null? "" : id)%>"/></td>
			</tr>
			<tr>
				<td align = "center">비밀번호</td>
				<td><input type = password name = password></td>	
			</tr>
			<tr>
				<td colspan = "2" align = "right"><input type = "checkbox" name = saveId value = "save"
				<%= saveId == null ? "" : "checked = \"checked\"" %>/>아이디 저장</td>
			</tr>
			<tr>
				<td colspan = "2" align = "right"><input type = submit value = "로그인"></td>
			</tr>	 	 
		</table>
	</form>
</body>
</html>