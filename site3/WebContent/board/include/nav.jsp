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
		$("#logout").on("click", function(e){
			e.preventDefault();
			var $form = $("<form>").attr("action", "/site3/board/user/logout").attr("method", "post")
				.appendTo($("body")).submit();
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
				<li class="active"><a href="/site3/board/post/list">게시판</a></li>
				<c:if test="${username eq null }">
					<li><a href="/site3/board/user/join">회원가입</a></li>
					<li><a href="/site3/board/user/login">로그인</a></li>
				</c:if>
				<c:if test="${username ne null }">
					<li><a href="/site3/board/user/info">내정보 보기</a></li>
					<li><a href="/site3/board/post/write">글쓰기</a></li>
					<li><a href="#" id="logout">로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
</body>
</html>