<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= request.getParameter("score")%>점
	<hr>
	<%
		int score = Integer.parseInt(request.getParameter("score"));
		String result;
		if(score>=80)
			result="합격";
		else
			result="불합격";
	%>
	<p>점수 : <%=result %></p>
</body>
</html>