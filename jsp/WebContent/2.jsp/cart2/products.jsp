<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 목록</title>
</head>/
<body>
	<!-- products.jsp -> cart.jsp -> print_cart.jsp --> 
	<form action="/jsp/2.jsp/cart2/cart/jsp" method="post">
		<select name="product">
			<option>사과</option>
			<option>배</option>
			<option>오렌지</option>
			<option>바나나</option>
		</select>
		<input type="submit" value="장바구니 담기"> 
	</form>
	

</body>
</html>