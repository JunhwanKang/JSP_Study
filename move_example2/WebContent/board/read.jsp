<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#delete").on("click", function(){
			var $form = $("<form>").attr("action", "/move_example2/board/delete").attr("method","post")
				.appendTo($("body"));
			$("<input>").attr("type", "hidden").attr("name", "bno").val(${board.bno}).appendTo($form);
			$form.submit();
		});
	});
</script>
</head>
<body>
	<form action="/move_example2/board/update" method="post">
		제목: <input type="text" name="title" value="${board.title}"><br>
		<textarea style="width:400px; height:400px;">${board.content}</textarea><br>
		<!-- 번호도 넘겨줘야하는데 사용자에게 보여줄 필요 없다... -->
		<input type="hidden" name="bno" value="${board.bno}">
		<button>변경하기</button>
		<button type="button" id="delete">삭제하기</button>
	</form>
</body>
</html>