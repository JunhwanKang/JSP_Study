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
	안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.<hr/>
	다시 로그인 하시려면 <br/>
	아이디와 비밀번호를 입력하십시오.<hr/>
	<form action = "LoginProject.jsp" method = "post">
		<input type = "submit" value = "첫 화면으로">
	</form>
	
</body>
</html>