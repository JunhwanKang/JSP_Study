<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/jsp/2.jsp/example4_2.jsp" method="get">
		data1:<input type="text" name="data1" value="111"><br>
		data2:<input type="text" id="data2" value="222"><br>
		<input type="hidden" name="data3" value="333">
		<button>보내기</button>
	</form>
</body>
</html>