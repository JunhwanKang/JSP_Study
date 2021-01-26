<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#home").on("click", function(){
			location.href="/jsp/2.jsp/move/main.jsp"
		});
	});
</script>
</head>
<body>
	덧셈 결과 : ${result }<br>
	<button id="home"
	>HOME</button>
</body>
</html>