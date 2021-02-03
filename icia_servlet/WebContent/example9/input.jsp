<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름, 성별, 취미</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="/icia_servlet/example9/test" method="post">
		<div class="form-group">
			<label for="name">이름:</label>
			<input type="text" class="form-control" id="name" placeholder="이름 입력" name="name">
		</div>
		<div class="form-group">
			<label>성별:</label>
			<label class="radio-inline"> 
				<input type="radio"	name="gender" value="female">여성
			</label> 
			<label class="radio-inline">
				<input type="radio"	name="gender" value="male">남성
			</label>
		</div>
		<div class="form-group">
			<label for="hobby">취미:</label>
			<select class="form-control" id="hobby" name="hobby" multiple="multiple">
				<option>등산</option>
				<option>낚시</option>
				<option>영화감상</option>
				<option>축구</option>
			</select>
		</div>
		<button>보내기</button>
	</form>
</body>
</html>