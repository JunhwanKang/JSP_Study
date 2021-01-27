<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("username")==null){
		
		session.setAttribute("goBack", "write.jsp");
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type = "text"></td>
			</tr>
			<tr>	
				<td>내용</td>
				<td><textarea></textarea></td>
			<tr>
				<td colspan="2" align="center">
					<button>작성 완료</button>
				<td>
			</td>	
		</table>
	</form>
</body>
</html>