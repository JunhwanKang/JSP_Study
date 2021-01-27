<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 서버에서 가장먼저 실행됨 어디서나!!! 그래서 어디적든 상관 x
	그런데 명시적으로 가장먼저 실행되므로 DOCTYPE 위에 적는게 보통
 -->
<%
	if(session.getAttribute("username")==null){
		session.setAttribute("destination", "write.jsp");
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
	<form>
		제목: <input type="text" name="title">
		내용: <textarea></textarea>
	</form>
</body>
</html>