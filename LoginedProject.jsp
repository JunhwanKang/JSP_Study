<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String rememberId = request.getParameter("rememberId");
		String password = request.getParameter("password");
		Cookie cookieRememberId;
		
		Cookie cookieId = new Cookie("id",id);
		response.addCookie(cookieId);
		
		Cookie cookiePassword = new  Cookie("password",password);
		response.addCookie(cookiePassword);		
		
		if(rememberId != null && rememberId.equals("keep")){
			 cookieRememberId = new Cookie("rememberId","keep");
		}else{
			 cookieRememberId = new Cookie("rememberId","temp");
		}
		
		response.addCookie(cookieRememberId);
		
		Cookie cookieLoginStatus = new Cookie("loginStatus", "Login");
		response.addCookie(cookieLoginStatus);
		
		
	%>
	<form action = "LogoutProject.jsp" method = "post">
		<table border = "1">
			<tr>
				<td><%=id+"´Ô È¯¿µÇÕ´Ï´Ù." %></td>
			</tr>
			<tr>
				<td align = "right">
					<input type = "submit" value = "·Î±×¾Æ¿ô">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>