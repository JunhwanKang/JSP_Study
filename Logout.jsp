<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>로그아웃</title>
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
					response.addCookie(cookies[i]);
				}
				if(cookies[i].getName().equals("saveId")){
					saveId = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
			}
		}
		if(saveId != null && saveId.equals("temp")){
			if(cookies != null && cookies.length>0){
				for(int i =0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		}
		%>
		
	<form action = "Cookie1.jsp" method = "post">
		<input type = "submit" value = "로그인 페이지 이동">
	</form>
</body>
</html>