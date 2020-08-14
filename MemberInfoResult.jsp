<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>회원 정보</title>
</head>
<body>
	<%
		Connection conn = null;
		Statement stmt = null;
		int rowNum;
	
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		String passwordChk = request.getParameter("pwChk");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		if(password.equals(passwordChk)){
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC","jspbook","1234");
				
				
				stmt = conn.createStatement();
					rowNum = stmt.executeUpdate("INSERT INTO Member (id, password, name, gender, address, phone, email)" + "VALUES('"+id+"','"+password+"','"+name+"','"+gender+"','"+address+"','"+phone+"','"+email+"')");
				
			}catch (SQLException e){
			}finally{
				if(stmt != null) try{stmt.close();}catch(SQLException e){}
				if(conn != null) try{conn.close();}catch(SQLException e){}
			}
		}else{
			response.sendRedirect("http://localhost:8083/Chap10/MemberPwNotSame.jsp");
		}
	
	%>
		<h2>작성하신 내용은 아래와 같습니다.</h2><br>
		이름: <%=request.getParameter("name") %><hr>
		성별: <%=request.getParameter("gender") %><hr>
		아이디: <%=request.getParameter("id") %><hr>
		주소: <%=request.getParameter("address") %><hr>
		전화번호: <%=request.getParameter("phone") %><hr>
		이메일주소: <%=request.getParameter("email") %><hr>
		<form action = "MemberLogin.jsp" method = "post">
			<input type = "submit" value = "로그인 화면으로 ">
		</form>
		
</body>
</html>