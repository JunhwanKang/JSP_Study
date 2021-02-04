<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>명함 변경</h1>
	<form action="/move_example/business/update" method="post">
		name: <input type='text' name="name" value="${bcard.name}"><br>
		company: <input type='text' name="company" value="${bcard.company}"><br>
		email: <input type='text' name="email" value="${bcard.email}"><br>
		tel: <input type='text' name="tel" value="${bcard.tel}"><br>
		<input type="hidden" name="num" value="${bcard.num}">
		<button>변경</button>
	</form>
</body>
</html>