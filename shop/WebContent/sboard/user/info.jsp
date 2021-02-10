<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$("#resign").on("click", function(){
			var $form = $("<form>").attr("action", "/shop/sboard/user/resign").attr("method", "post");
			$form.appendTo($("body")).submit();
		})
	})
</script>
</head>
<body>
	${user }
	<button id="resign">회원 탈퇴</button>
</body>
</html>