<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$(".delete").on("click", function(e){
			// a태그의 이동(기본동작)을 끄자
			e.preventDefault();
			var $form = $("<form>").attr("action", "/icia_servlet/card/delete")
			.attr("method","post");
			$("<input>").attr("type","hidden").attr("name", "name").val($(this).attr("data-name")).appendTo($form);
			$form.appendTo($("body")).submit();
		});
	});
</script>
</head>
<body>
<ul>
	<c:forEach items = "${list }" var = "card">
		<li>이름: ${card.name}, 전화 : ${card.tel}&nbsp;&nbsp;
			<a href="/icia_servlet/card/update?name=${card.name }">변경하기</a>&nbsp;&nbsp;
			<a class="delete" href="#" data-name="${card.name }">삭제하기</a>
		</li>
	</c:forEach>
</ul>
<a href="/icia_servlet/card/write">명함 추가로 이동</a>
</body>
</html>