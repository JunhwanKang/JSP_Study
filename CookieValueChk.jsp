<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Cookie �� ����</title>
</head>
<body>
	<h3>������ "CookieTest" ��Ű�� Ȯ���մϴ�.</h3>
	<% 
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("MyCookie")){
	%>
					<h4>
						��Ű�̸� : <%=cookies[i].getName() %><br/>
						��Ű �� : <%=cookies[i].getValue() %><br/>
					</h4>
	<% 				
				}
			}
		}
	%>
</body>
</html>