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
		$(".delete").on("click", function(){
			var $form = $("<form>").attr("action","/move_example/business/delete")
				.attr("method", "post").appendTo("body");
			var num = $(this).attr("data-num");
			$("<input>").attr("type", "hidden").attr("name", "num")
				.val(num).appendTo($form);
			$form.submit();
		});
	});
</script>
</head>
<body>
	<c:forEach items="${list}" var="bcard">
		<div style="border:1px solid blue;">
			${bcard.num } <br>
			name: ${bcard.name } <br>
			company: ${bcard.company } <br>
			email: ${bcard.email } <br>
			tel: ${bcard.tel }<br>
			<a href="/move_example/business/update?num=${bcard.num }">변경</a>
			<a href="#" class="delete" data-num="${bcard.num}">삭제</a>
		</div>
		<hr>
	</c:forEach>
	<a href="/move_example/business/write">명함 추가</a>
</body>
</html>

