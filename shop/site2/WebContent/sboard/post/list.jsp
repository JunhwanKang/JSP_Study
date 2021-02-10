<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-hover">
		<tr><th>번호</th><th>제목</th><th>작성일</th><th>조회수</th></tr>
		<c:forEach items="${list}" var="post">
			<tr>
				<td>${post.pno }</td>
				<td><a href="/site2/sboard/post/read?pno=${post.pno }">${post.title }</a></td>
				<td><javatime:format value="${post.writeTime}" style="MS"/>${post.writeTime }</td>
				<td>${post.readCnt }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>