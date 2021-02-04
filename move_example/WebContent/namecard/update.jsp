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
	<form action="/move_example/namecard/update" method="post">
		이름: <input type="text" name="name"value="${namecard.name}" readonly="readonly"><br>
		이메일: <input type="text" name="email" value="${namecard.email}"><br>
		전화: <input type="text" name="tel" value="${namecard.tel}"><br>
		<input type="hidden" name="num" value="${namecard.num}">
		<button>명함 변경</button>
	</form>
</body>
</html>