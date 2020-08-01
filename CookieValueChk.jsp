<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie 값 변경</title>
</head>
<body>
	<h3>생성된 "CookieTest" 쿠키를 확인합니다.</h3>
	<% 
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("MyCookie")){
	%>
					<h4>
						쿠키이름 : <%=cookies[i].getName() %><br/>
						쿠키 값 : <%=cookies[i].getValue() %><br/>
					</h4>
	<% 				
				}
			}
		}
	%>
</body>
</html>