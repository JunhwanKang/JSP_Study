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
		$.ajax({
			url: "/jsp2/example2/print21",
			success : function (result) {
				alert(result);
			}
		})
	})
</script>
</head>
<body>
	
</body>
</html>