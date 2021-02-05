<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/update" method="post">
		제목<input type="text" name="title" value="${board.title }"><br>
		<textarea style="width:400px; height:500px;">${board.content }</textarea><br>
		<input type="hidden" name="bno" value="${board.bno}">
		<button>수정</button>
	</form>
</body>
</html>
