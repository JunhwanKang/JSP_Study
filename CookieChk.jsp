<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie 생성</title>
</head>
<body>
	<h3>생성된 "CookieTest" 쿠키를 확인합니다.</h3><hr>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("CookieTest")){
	%>
					<h3>
					쿠키의 이름 : <%=cookies[i].getName() %><br/>
					쿠키의 값 : <%=cookies[i].getValue() %><br/>
					쿠키의 유효시간 : <%=cookies[i].getMaxAge() %><br/>
					</h3>					
	<% 					
				}
			}
		}
	%>
	<%--   <form action = "CookieSet.jsp" method = "post">
		<input type = "submit" value = "첫 페이지로 이동">
	</form>
	--%>
	<a href = "CookieSet.jsp">첫 페이지로 이동</a>
</body>
</html>