<%@page import="jsp.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover">
	<tr><td>번호</td><td>제목</td><td>글쓴이</td><td>시간</td></tr>
	<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.bno }</td>
			<td><a href="/read?bno=${board.bno}">${board.title }</td>
			<td>${board.writer }</td>
			<td>${board.writeTime }</td>
		</tr>
	</c:forEach>	
</table>
</body>
</html>