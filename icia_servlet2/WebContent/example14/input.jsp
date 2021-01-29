<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/icia_servlet2/example14/test" method="post">
		<input type="text" name="val1">
		<select name="op">
			<option disabled="disabled" selected="selected">연산자 선택</option>	
			<option>+</option>	
			<option>-</option>	
			<option>*</option>	
		</select>
		<input type="text" name="val2"><br>
		<button>계산하기</button>
	</form>
</body>
</html>