<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>��Ű�� �̿��� ���� ����</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		if(cookies != null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("loginStatus")){
					loginStatus = cookies[i].getValue();
					cookies[i].setValue("logout");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				if(cookies[i].getName().equals("rememberId")){
					rememberId = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
			}
		}
	%>
	<h3>[<%=id %>]�� ���������� �α׾ƿ� �Ǿ����ϴ�.<br/>
	�̿����ּż� �����մϴ�.</h3>
	<%
		if(rememberId != null && rememberId.equals("temp")){
			if(cookies !=null && cookies.length>0){
				for(int i=0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		}
	%>
	<form action = "CookieSessionLogin.jsp" method = "post">
		<input type = "submit" value = "�α��� ������ �̵�">
	</form>
</body>
</html>