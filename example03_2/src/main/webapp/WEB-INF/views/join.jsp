<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		var idx = 0;
		var $div = $("#sajin_div");
		$("#add").on("click", function(){
			$("<input>").attr("type", "file").attr("name", "sajins["+ idx +"]").appendTo($div);
			$("<hr>").appendTo($div);
			idx++;
		});
	});
</script>
</head>
<body>
	<form action="/user/join" method="post" enctype="multipart/form-data">
		아이디:<input type="text" name="username" value="spirng"><br>
		이름<input type="text" name="irum" value="홍길동"><br>
		비밀번호:<input type="text" name="password" value="1234"><br>
		이메일:<input type="text" name="email" value="spring@naver.com"><br>
		생일:<input type="date" name="birthday" value="1990-10-29"><br>
		<button type="button" id="add">사진 추가</button>
		<div id="sajin_div">
			
		</div>
		<button>회원 가입</button>
	</form>
</body>
</html>