<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 800px; margin: 0 auto;
	}
	table, td {
		border: 1px solid gray; border-collapse: collapse;
	}
	a{
	margin: 0 auto;
	}
</style>
</head>
<body>
	<table>
		<tr><th>번호</th><th>제목</th><th>글쓴이</th><th>작성시간</th><th>조회수</th></tr>
		<c:forEach items="${list}" var = "board">
			<tr>
				<td>${board.bno }</td>
				<td><a href="/move_example2/board/read?bno=${board.bno }">${board.title }</a></td>
				<td>${board.writer }</td>
				<td><javatime:format value="${board.writeTime }" style="MS"/></td>
				<td>${board.readCnt }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/move_example2/board/write">글쓰기</a>
</body>
</html>