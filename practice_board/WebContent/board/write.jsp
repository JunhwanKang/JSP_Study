<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/practice_board/board/write" method="post">
		제목: <input type="text" name="title"><br>
		<textarea rows="10" cols="30" name="content"></textarea><br>
		작성자: <input type="text" name="writer"><br>
		<button>글쓰기</button>
	</form>
</body>
</html>