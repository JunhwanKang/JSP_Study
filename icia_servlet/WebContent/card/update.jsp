<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/icia_servlet/card/update" method="post">
		이름 : <input type="text" name = "name" value="${card.name }" readonly="readonly"><br>
		전화 : <input type="text" name = "tel" value="${card.tel }"><br>
		<button>명함 변경</button>
	</form>
</body>
</html>