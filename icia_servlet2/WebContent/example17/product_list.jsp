<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 목록</h1>
	<form action="/icia_servlet2/example17/cart" method="post">
		<select name="product">
			<option value="사과">사과</option>
			<option value="바나나">바나나</option>
			<option value="오렌지">오렌지</option>
		</select>
		<input type="submit" value="추가">
	</form>
</body>
</html>