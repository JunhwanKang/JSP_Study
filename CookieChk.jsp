<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie ����</title>
</head>
<body>
	<h3>������ "CookieTest" ��Ű�� Ȯ���մϴ�.</h3><hr>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("CookieTest")){
	%>
					<h3>
					��Ű�� �̸� : <%=cookies[i].getName() %><br/>
					��Ű�� �� : <%=cookies[i].getValue() %><br/>
					��Ű�� ��ȿ�ð� : <%=cookies[i].getMaxAge() %><br/>
					</h3>					
	<% 					
				}
			}
		}
	%>
	<%--   <form action = "CookieSet.jsp" method = "post">
		<input type = "submit" value = "ù �������� �̵�">
	</form>
	--%>
	<a href = "CookieSet.jsp">ù �������� �̵�</a>
</body>
</html>