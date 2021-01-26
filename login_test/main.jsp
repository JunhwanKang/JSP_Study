<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#logout_btn").on("click", function(){
			var $form = $("<form>").attr("action", "logout.jsp").attr("method","post").appendTo("body");
			$form.submit();
		});
	});
</script>
</head>
<body>
<%
	if(session.getAttribute("username")== null){
		out.print("<a href='login.jsp'>로그인</a>");
	} else {
		out.print(session.getAttribute("username")+"님 안녕하세요.");
		out.print("<button id='logout_btn'>로그아웃</button>");
	}
%>
</body>
</html>