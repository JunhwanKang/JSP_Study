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
		$(".delete").on("click", function(e){
			e.preventDefault();
			var num = $(this).attr("data-num");
			$form = $("<form>").attr("action", "/move_example/namecard/delete")
				.attr("method", "post").appendTo("body");
			$("<input>").attr("type", "hidden").attr("name", "num").val(num).appendTo($form);
			$form.submit();
		});
	});
</script>
</head>
<body>
	<c:forEach items="${list}" var="namecard">
		<div style="border: 1px solid red;">
			<div>${namecard.num} ${namecard.name }</div>
			<div>${namecard.email} ${namecard.tel}</div>
			<div>
				<a href="/move_example/namecard/update?num=${namecard.num}">변경</a> 
				<a href="#" class="delete" data-num="${namecard.num}">삭제</a>
			</div>
		</div>
	</c:forEach>
	<a href="/move_example/namecard/write">명함 추가</a>
</body>
</html>