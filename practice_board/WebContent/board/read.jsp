<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
<style>
	form{
		width: 500px;
		margin: 0 auto;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#delete").on("click", function(){
			
		});
	});
</script>
</head>
<body>
	<form action="/practice_board/board/update" method="post">
		제목<input type="text" name="title" value="${board.title }"><br>
		<textarea style="width:400px; height:500px;">${board.content }</textarea><br>
		<input type="hidden" name="bno" value="${board.bno}">
		<button>수정</button>
		<button id="delete">삭제</button>
	</form>
</body>
</html>