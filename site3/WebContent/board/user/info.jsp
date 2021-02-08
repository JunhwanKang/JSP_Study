<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="form-group">
		<label for="username">아이디:</label> 
		<input type="text" class="form-control" id="username" name="username" value="${user.username }" readonly="readonly">
	</div>
	<div class="form-group">
		<label for="irum">이름:</label> 
		<input type="text" class="form-control" id="irum" name="irum" value="${user.irum }" readonly="readonly">
	</div>
	<div class="form-group">
		<label for="email">아이디:</label> 
		<input type="text" class="form-control" id="email" name="email" value="${user.email }" readonly="readonly">
	</div>
</body>
</html>