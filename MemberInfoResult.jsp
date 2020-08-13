<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
		<h2>작성하신 내용은 아래와 같습니다.</h2><br>
		이름: <%=request.getParameter("name") %><hr>
		성별: <%=request.getParameter("gender") %><hr>
		아이디: <%=request.getParameter("id") %><hr>
		주소: <%=request.getParameter("address") %><hr>
		전화번호: <%=request.getParameter("phone") %><hr>
		이메일주소: <%=request.getParameter("email") %><hr>
		<form action = "MemberLogin.jsp" method = "post">
			<input type = "submit" value = "로그인 화면으로 ">
		</form>
		
</body>
</html>