<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>로그인 체크 페이지</title>
</head>
<body>
	<%	
		String saveId = request.getParameter("saveId");
		String id = request.getParameter("id");
		Cookie cookieSaveId;
		
		Cookie cookieId = new Cookie("id", id);
		response.addCookie(cookieId);
		
		Cookie cookieLoginStatus = new Cookie("loginStatus", "login");
		if(saveId != null && saveId.equals("save")){
			cookieSaveId = new Cookie("saveId","save");
		}
		else{
			cookieSaveId = new Cookie("saveId","temp");
		}
		response.addCookie(cookieSaveId);
		
		response.sendRedirect("http://localhost:8083/Chap10/Cookie3.jsp");
	%>
	
</body>
</html>