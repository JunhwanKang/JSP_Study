<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>로그인 체크 페이지</title>
</head>
<body>
	<%	
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","1234");
		Statement stmt = conn.createStatement();
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		ResultSet rs = stmt.executeQuery("SELECT id, password FROM Member WHERE id ='"+id+"' AND password ='"+pw+"'");
		if(rs.next()){
	%>
					<jsp:forward page = "MemberLogined.jsp"/> 
	<% 
			
			}else{
 	%>			
 				<jsp:forward page = "MemberNotLogin.jsp"/> --%>
	<% 
			}
			
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>