<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>수정 페이지</h1>
	<form action="/move_example/board/update" method="post">
		제목: <input type="text" name="title" value="${board.title}"><br>
		내용: <input type="text" name="content" value="${board.content}"><br>
		작성자: <input type="text" name="writer" value="${board.writer}" readonly="readonly"><br>
		<input type="hidden" name="bno" value="${board.bno}">
		<hr>
		<button>글 수정</button>
	</form>
</body>
</html>