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
		$("#login_btn").on("click", function(){
			var $form = $("<form>").attr("action", "login.jsp").attr("method", "get").appendTo("body");
			$form.submit();
		});
		$("#logout_btn").on("click", function(){
			var $form = $("<form>").attr("action", "logout.jsp").attr("method", "post").appendTo("body");
			$form.submit();
		});
	});
</script>
</head>
<body>
	<c:if test="${username eq null}">
		<button id="login_btn">로그인</button>
	</c:if>
	<c:if test="${username ne null}">
		${username}님 환영합니다.<hr>
		<button id="logout_btn">로그아웃</button>
	</c:if>
		<a href='write.jsp'>글쓰기</a>
		<a href='myinfo.jsp'>내정보보기</a>
</body>
</html>