<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
</head>
<body>
	<%
		Connection conn = null;
		Statement stmt = null;
		int rowNum;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","1234");
			
			stmt = conn.createStatement();
			
			rowNum = stmt.executeUpdate("DELETE FROM STUDENT WHERE STUDENT_ID = '20140006'");
			
			out.print(rowNum+"개의 행이 삭제되었습니다."+"<hr/>");
		}catch(SQLException e){
			//에러 발생
		}finally{
			if(stmt != null) try{stmt.close();}catch(SQLException e){}
			if(conn != null) try{conn.close();}catch(SQLException e){}
		}
	%>
	<a href = "http://localhost:8083/Chap10/FirstJDBC.jsp">결과 확인</a>
</body>
</html>