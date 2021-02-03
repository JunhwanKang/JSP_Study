<%@page import="example07.Board"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%
	List<Board> list = new ArrayList<>();
	for(int i=10; i>0; i--) {
		list.add(new Board(i, i+"번째 글", "누군가", "2020-1-10"));
	}
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<c:forEach items="${list }" var="board">
		<li>${board.bno }</li>
	</c:forEach>
	</ul>
</body>
</html>