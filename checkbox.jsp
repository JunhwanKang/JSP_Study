<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%String animal = null; %>
	<input type = "checkbox" name = "animal" value = "tiger" <%=(animal != null?"": "checked = \"checked\"") %> />동물고르기
	<form action = "Checkbox2.jsp" method = "post">
		<input type = "submit" value = "전송">
	</form>
	
</body>
</html>