<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/site3/board/post/update" method="post">
	<div class="form-group">
		<label for="writer">작성자</label> 
		<input type="text" class="form-control" id="writer" name="writer" value="${username }" readonly="readonly">
	</div>
	<div class="form-group">
		<label for="title">제목</label> 
		<input type="text" class="form-control" id="title" name="title" value="${post.title }">
	</div>
	<div class="form-group">
		<textarea name="content">${post.content }</textarea>
	</div>
	<button class="btn btn-primary" id="join">변경</button>
	</form>
</body>
</html>