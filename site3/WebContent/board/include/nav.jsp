<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		$(".nav").on("click", function(){
			$(".nav li").removeClass("active");
			$(this).addClass("active");
		});	
	});
</script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">BOARD</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">게시판</a></li>
			<c:if test="${username eq null }">
				<li><a href="#">회원가입</a></li>
				<li><a href="#">로그인</a></li>
			</c:if>
			<c:if test="${username ne null }">
				<li><a href="#">글쓰기</a></li>
				<li><a href="#">로그아웃</a></li>
			</c:if>
		</div>
	</nav>

</body>
</html>