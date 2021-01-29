<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 선택</h1>
	<form action="/icia_servlet2/example13/gugudan" method="post">
		<select name="dan">
			<option disabled="disabled" selected="selected">구구단을 선택하세요</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
		</select>
		<button>단 출력</button>
	</form>
</body>
</html>