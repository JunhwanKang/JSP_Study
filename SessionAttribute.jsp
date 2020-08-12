<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
	<%
		session.setAttribute("ID", "TestID");
		session.setAttribute("Grade", "관리자");
	%>
<body>
	세션의 속성 설정 페이지입니다.<hr>
	현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br>
	[<%=session.getAttribute("Grade") %>]권한으로 접속중입니다.	
</body>
</html>