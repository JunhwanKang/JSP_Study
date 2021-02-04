<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	tr{
		text-align : center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
		$(".delete").on("click", function(e){
			e.preventDefault();
			var $form = $("<form>").attr("action", "/move_example/board/delete").attr("method","post")
				.appendTo("body");
			var num = $(this).attr("data-num");
			$("<input>").attr("type","hidden").attr("name","num").val(num).appendTo($form);
			$form.submit();
		});
	});
</script>
</head>
<body>
	<table border="1">
		<tr>
			<td>글 번호</td><td>제목</td><td>내용</td><td>작성자</td><td colspan="2">수정 및 삭제</td>
		</tr>	
		<c:forEach items="${list}" var="board">
			<tr>
				<td>${board.bno}</td>
				<td>${board.title}</td>
				<td>${board.content}</td>
				<td>${board.writer}</td>
				<td><a href="/move_example/board/update?num=${board.bno}">수정</a></td>
				<td><a href="#" class="delete" data-num="${board.bno}">삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<a href="/move_example/board/write">글 쓰기</a>
</body>
</html>