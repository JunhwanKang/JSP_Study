<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(function(){
		$("#delete").on("click", function(){
			var $form = $("<form>").attr("action", "/shop/sboard/post/delete").attr("method", "post").appendTo($("body"));
			$("<input>").attr("type", "hidden").attr("name","pno").val("${post.pno}").appendTo($form);
			$form.submit();
		});
		$("#update").on("click", function(){
			var $form = $("<form>").attr("action", "/shop/sboard/post/update").attr("method", "post").appendTo($("body"));
			$("<input>").attr("type", "hidden").attr("name","pno").val("${post.pno}").appendTo($form);
			$("<input>").attr("type", "hidden").attr("name","title").val("#title").appendTo($form);
			$("<input>").attr("type", "hidden").attr("name","content").val("#content").appendTo($form);
			$form.submit();
		});
	})
</script>
</head>
<body>
<table class="table">
	<tr>
		<td>글번호: ${post.pno}</td>
		<td>${post.writeTime} 조회수: ${post.readCnt}</td>
	</tr>
	<tr>
		<td>제목</td>
		<c:if test="${ post.writer eq username}">
			<td><input type="text" name="title" id=title value="${post.title}"></td>
		</c:if>
		<c:if test="${post.writer ne username}">
			<td>${post.title}</td>
		</c:if>
	</tr>
	<tr>
		<td colspan="2"></td>
		<c:if test="${ post.writer eq username}">
			<td><textarea id="content">${post.content }</textarea></td>
		</c:if>
		<c:if test="${post.writer ne username}">
			<td>${post.content }</td>
		</c:if>
	</tr>
</table>
<c:if test="${ post.writer eq username}">
	<button id="delete">삭제하기</button>
	<button id="update">변경하기</button>
</c:if>
</body>
</html>