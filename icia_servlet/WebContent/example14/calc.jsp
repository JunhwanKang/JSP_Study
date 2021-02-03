<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/icia_servlet/example14/calc" method="post">
		<input type="text" name= "val1">
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>*</option>
		</select>
		<input type="text" name=val2>
		<button>계산하기</button>
	</form>
</body>
</html>