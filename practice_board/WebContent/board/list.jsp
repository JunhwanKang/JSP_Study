<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table{
		width: 800px;
		margin: 0 auto;
		height: 200px;
	}
	table tr{
		text-align: center;
	}
	#write{
		display: block;
		width : 800px;
		margin: 0 auto;
		text-align: center;
	}
</style>
<title>게시판</title>
</head>
<body>
	<table>
		<tr><th>NO</th><th>제목</th><th>내용</th><th>작성자</th><th>조회수</th><th>
		<c:forEach items="${list}" var="board">
			<tr>
				<td>${board.bno}</td>
				<td><a href="/practice_board/board/read?bno=${board.bno}">${board.title}</a></td>
				<td>${board.content}</td>
				<td>${board.writer}</td>
				<td>${board.readCnt}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/practice_board/board/write" id="write">글 쓰기</a>
</body>
</html>