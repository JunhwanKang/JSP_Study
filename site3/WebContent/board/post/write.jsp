<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	textarea{
		width:600px;
		min-height: 400px;
		resize: none;
	}
</style>
</head>
<body>
	<form action="/site3/board/post/write" method="post">
	<div class="form-group">
		<label for="writer">작성자</label> 
		<input type="text" class="form-control" id="writer" name="writer" value="${username }" readonly="readonly">
	</div>
	<div class="form-group">
		<label for="title">제목</label> 
		<input type="text" class="form-control" id="title" name="title">
	</div>
	<div class="form-group">
		<textarea name="content"></textarea>
	</div>
	<button class="btn btn-primary" id="join">작성</button>
	</form>
</body>
</html>