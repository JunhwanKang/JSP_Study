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
	<form action="/move_example/namecard/write" method="post">
		이름: <input type="text" name="name"><br>
		이메일: <input type="text" name="email"><br>
		전화: <input type="text" name="tel"><br>
		<button>명함 추가</button>
	</form>
</body>
</html>