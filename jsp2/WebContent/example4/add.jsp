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
		$("#add").on("click", function(){
			var params = {
					val1: $("#val1").val(),
					val2: $("#val2").val()
			}
			$.ajax({
				url: "/jsp2/example4/rest_add",
				method: "post",
				data: params,
				success: function(result) {
					$("#result").text(result);
				}
			})
		})
	})
</script>
</head>
<body>
	<input type="text" id="val1">+<input type="text" id="val2">
	=<span id="result"></span>
	<button id="add">더하기</button>
</body>
</html>