<%@page import="org.apache.commons.lang3.math.NumberUtils"%>
<%@page import="example07.Board"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%
	// 글 : 123;
	int numberOfBoard = 123;
	int pageno = NumberUtils.toInt(request.getParameter("pageno"), 1);
	int end = numberOfBoard - ((pageno-1)*10);
	int start = numberOfBoard - (pageno*10) + 1;
	List<Board> list = new ArrayList<>();
	for(int i=end; i>=start; i--) {
		list.add(new Board(i, i+"번째 글", "누군가", "2020-1-10"));
	}
	Map<String,Object> map = new HashMap<>();
	map.put("list", list);
	map.put("pageno", pageno);
	if(pageno>=1 && pageno<=5) {
		map.put("prev", "0");
		map.put("start", "1");
		map.put("end", "5");
		map.put("next", "6");
	} else if(pageno>=6 && pageno<=10) {
		map.put("prev", "5");
		map.put("start", "6");
		map.put("end", "10");
		map.put("next", "11");
	} else {
		map.put("prev", "10");
		map.put("start", "11");
		map.put("end", "13");
		map.put("next", "0");
	}
	System.out.println(map);
	request.setAttribute("page", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-hover">
		<tr><th>번호</th><th>제목</th><th>글쓴이</th><th>시간</th></tr>
		<c:forEach items="${page.list }" var="board">
			<tr>
				<td>${board.bno }</td>
				<td><a href="/read?bno=${board.bno}">${board.title }</a></td>
				<td>${board.writer }</td>
				<td>${board.writeTime }</td>
			</tr>
		</c:forEach>
	</table>
	<div style="text-align:center;">
		<ul id="pagination" class="pagination">
			<c:if test="${page.prev>0 }">
				<li><a href="/icia_servlet/example07/example5.jsp?pageno=${page.prev}">이전으로</a></li>
			</c:if>
			<c:forEach begin="${page.start }" end="${page.end }" var="i">
				<c:choose>
					<c:when test="${i==page.pageno }">
						<li class="active"><a href="/icia_servlet/example07/example5.jsp?pageno=${i}">${i}</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/icia_servlet/example07/example5.jsp?pageno=${i}">${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${page.next>0 }">
				<li><a href="/icia_servlet/example07/example5.jsp?pageno=${page.next}">다음으로</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>