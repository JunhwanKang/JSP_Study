<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>�α׾ƿ�</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String saveId = null;
		String id = null;
		if(cookies != null && cookies.length>0){
			for(int i =0; i<cookies.length; i++){
				if(cookies[i].getName().equals("loginStatus")){
					cookies[i].setMaxAge(0);
				}
			}
		}	
	%>
	<form action = "Cookie1.jsp" method = "post">
		<input type = "submit" value = "�α��� ������ �̵�">
	</form>
</body>
</html>