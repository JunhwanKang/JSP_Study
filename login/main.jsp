<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	// 로그아웃 버튼 누르면 logout.jsp를 부르자
	$(document).ready(function(){
		$("#logout_btn").on("click",function(){
			var $form = $("<form>").attr("action","logout.jsp").attr("method","post")
			.appendTo("body");
			$form.submit();
		});
	});
</script> 
</head>
<body>
<%
	if(session.getAttribute("username")==null){
		out.print("<a href='/jsp/login/login.jsp'>로그인</a>");
	} else {
		out.print(session.getAttribute("username")+"<br>");
		//form이 없으면 그냥 버튼써도 서버로 안보내고 버튼일 뿐임.
		out.print("<button id='logout_btn'>로그아웃</button>");
	}
%>
</body>
</html>