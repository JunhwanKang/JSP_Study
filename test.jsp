<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// session을 설정하는 부분
	String username1 = "홍길동";
	String username2 = "손오공";
	session.setAttribute("username1", username1);
	session.setAttribute("username2", username2);
	session.setMaxInactiveInterval(1000);
%>

<%--세션을 출력하는 부분 --%>
<%=session.getId() %><br>
<%=session.getAttribute("username1") %><br>
<%=session.getAttribute("username2") %><br>
<%=session.getMaxInactiveInterval() %>
<hr>
<%-- 세션을 삭제 --%>
<%
	session.removeAttribute("username1");
%>

<%-- 삭제 후 다시 출력 --%>
<%=session.getAttribute("username1") %><br>
<%=session.getAttribute("username2") %>

<%-- 세션을 모두 삭제 --%>
<%
	session.invalidate();
%>
<%-- 모두 출력 --%>
<%=session.getAttribute("username1") %><br>
<%=session.getAttribute("username2") %>
</body>
</html>