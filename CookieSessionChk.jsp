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
		if(cookies != null  && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				
				if(cookies[i].getName().equals("loginStatus")){
					loginStatus = cookies[i].getValue();
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
	<%
		if(loginStatus != null && loginStatus.equals("login") && rememberId != null && id !=null){
	%>
			<h3>[<%=id %>]�� ȯ���մϴ�.<br/>
			�α��� ���̵� �����¸� [<%=(rememberId.equals("temp")? "�������� ����" : "������") %>]���� �����ϼ̽��ϴ�.</h3>	
			<form action = "CookieSessionLogout.jsp" method = "post">
				<input type = "submit" value = "�α׾ƿ�">
			</form>
	<%
		} else{
	%>		
			<h3>�α������� �����̰ų�, �߸��� �����Դϴ�.<br/>
			�α����Ͽ� �ֽñ� �ٶ��ϴ�.</h3>
			<form action = "CookieSessionLogin.jsp" method = "post">
				<input type = "submit" value = "�α��� ������">
			</form>
	<%
		}
	%>		
</body>
</html>