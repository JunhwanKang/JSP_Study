<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 리스트</h1>
	<form action="/jsp/2.jsp/practice_cart/cart.jsp" method="post">
		<select name="products">
			<option value="사과">사과</option>
			<option value="배">배</option>
			<option value="귤">귤</option>
			<option value="파인애플">파인애플</option>
		</select>
		<input type="submit" value="장바구니 담기">		
	</form>
</body>
</html>