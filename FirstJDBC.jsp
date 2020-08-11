<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>JDBC 첫 실행</title>
</head>
<body>
	<%
		//	JDBC 드라이버 로딩
	//  Class.forName("com.mysql.jdbc.Driver");
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
		// ex) 우리 사무실에서 사용하는 DB주소는 132.26.71.35:3306
		Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
			"jspbook",
			"1234"
		);
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM STUDENT");
		
		while(rs.next()){
			out.println(rs.getString(1)+"|");
			out.println(rs.getString(2)+"|");
			out.println(rs.getString(3)+"|");
			out.println(rs.getString(4)+"|");
			out.println(rs.getString(5)+"<br/>");
		}
		
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>