<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String rememberId = null;
		String id = null;
		String password = null;
		String loginStatus = null;
		
		Cookie[] cookies = request.getCookies();
	
		if(cookies !=  null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("loginStatus")){
					loginStatus = cookies[i].getValue();
					cookies[i].setValue("Logout");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				if(cookies[i].getName().equals("rememberId")){
					rememberId = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
				if(cookies[i].getName().equals("password")){
					password = cookies[i].getValue();
				}
			}
		}
		
		if(rememberId != null && rememberId.equals("temp")){
			if(cookies !=  null && cookies.length>0){
				for(int i=0; i<cookies.length; i++){
					if(cookies[i].getName().equals("id")){
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
					if(cookies[i].getName().equals("password")){
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
					}
				}
			}
		}
		
		
	
	%>
	�����ϰ� �α׾ƿ� �Ǿ����ϴ�. �̿����ּż� �����մϴ�.<hr/>
	�ٽ� �α��� �Ͻ÷��� <br/>
	���̵�� ��й�ȣ�� �Է��Ͻʽÿ�.<hr/>
	<form action = "LoginProject.jsp" method = "post">
		<input type = "submit" value = "ù ȭ������">
	</form>
	
</body>
</html>