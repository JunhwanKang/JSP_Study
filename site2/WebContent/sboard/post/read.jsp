<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<tr><td>${post.pno }</td></tr>
		<tr><td>
			<%-- 글쓴이인 경우 제목 편집 가능 --%>
			<c:if test="${username eq post.writer }">
				제목 : <input type="text" value="${title}" name="title">
			</c:if>
			<%-- 글쓴이가 아닌 경우 그냥 출력 --%>
			<c:if test="${username ne post.writer }">
				${post.title }
			</c:if>
		</td></tr>
		<tr><td>
			<c:if test="${username eq post.writer }">
				<textarea name="content">${post.content }</textarea>
			</c:if>
			<c:if test="${username ne post.writer }">
				${post.content }
			</c:if>
		</td></tr>
		<tr><td>${post.writeTime }</td></tr>
		<tr><td>${post.readCnt }</td></tr>
	</table>
	<%-- 글쓴이인 경우 변경, 삭제 보이기 --%>
	<c:if test="${username eq post.writer }">
		<button id="update">변경하기</button>
		<button id="delete">삭제하기</button>
	</c:if>
</body>
</html>