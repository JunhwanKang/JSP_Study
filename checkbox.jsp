<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%String animal = null; %>
	<input type = "checkbox" name = "animal" value = "tiger" <%=(animal != null?"": "checked = \"checked\"") %> />��������
	<form action = "Checkbox2.jsp" method = "post">
		<input type = "submit" value = "����">
	</form>
	
</body>
</html>