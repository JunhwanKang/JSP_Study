<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	textarea{
		width:600px;
		min-height: 400px;
		resize: none;
		border-style: none;
	}
</style>
<script>
	$(document).ready(function(){
		$("#update").on("click", function(){
			$("<form>").attr("action", "/site3/board/post/update").attr("method", "get")
						.appendTo($("body")).submit();
		});
	});
</script>
</head>
<body>
	<table>
		<tr>
			<td>No: ${post.pno}</td>
			<td>조회수: ${post.readCnt }</td>
		</tr>	
		<tr>
			<td>${post.writer}</td>
			<td><javatime:format value="${post.writeTime}" style="MS"/></td>
		</tr>
		<tr>
			<td><h2 align="center">${post.title}</h2></td>
		</tr>
		<tr>
			<td><textarea name="content" id="content" readonly="readonly">${post.content}</textarea></td>
		</tr>	
	</table>
	<c:if test="${username eq post.writer}">
		<button id="update">변경하기</button>
		<button id="delete">삭제하기</button>
	</c:if>
</body>
</html>