<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="/move_example/board/write" method="post">
		제목: <input type="text" name="title"><br>
		내용: <input type="text" name="content"><br>
		작성자: <input type="text" name="writer"><br>
		<hr>
		<button>글 쓰기</button>
	</form>
</body>
</html>