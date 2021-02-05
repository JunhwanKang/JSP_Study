<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>명함 추가</h1>
	<form action="/move_example/business/write" method="post">
		name: <input type='text' name="name"><br>
		company: <input type='text' name="company"><br>
		email: <input type='text' name="email"><br>
		tel: <input type='text' name="tel"><br>
		<button>추가</button>
	</form>
</body>
</html>