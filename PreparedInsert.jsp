<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowNum;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=utf-8&serverTimezone=UTC","jspbook","1234");
			
			pstmt = conn.prepareStatement("INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, STUDENT_TEL, DEPARTMENT_ID)"+
											"VALUES(?,?,?,?,?)");
			pstmt.setString(1, "20140006");
			pstmt.setString(2, "김연아");
			pstmt.setString(3, "yanakim@email.com");
			pstmt.setString(4, "010-006-0006");
			pstmt.setString(5, "M001");
			
			rowNum = pstmt.executeUpdate();
			out.println(rowNum+"개의 행이 삽입되었습니다"+"<hr/>");
		}catch(SQLException e){
		}finally{
			if(pstmt != null)try{pstmt.close();}catch(SQLException e){}
			if(conn != null)try{conn.close();}catch(SQLException e){}
		}
	%>
	<a href = "http://localhost:8083/Chap10/FirstJDBC.jsp">결과확인</a>
</body>
</html>