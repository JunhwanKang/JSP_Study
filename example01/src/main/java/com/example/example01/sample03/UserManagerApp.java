package com.example.example01.sample03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserManagerApp {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String username = "scott";
	private String password = "TIGER";
	
	public void add(User user) throws ClassNotFoundException, SQLException{
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = conn.prepareStatement("insert into users values(?,?,?)");
		// 만약 user가 spring, 홍길동, 1234라면 => insert into users values('spring', '홍길동', '1234')
		pstmt.setString(1, user.getId());
		pstmt.setString(2, user.getName());
		pstmt.setString(3, user.getPassword());
		// sql문 실행
		pstmt.executeUpdate();
		// jdbc 관련 객체를 역순으로 닫는다
		pstmt.close();
		conn.close();
	}
	// 1. 연결
	// 2. sql문
	// 3. 실행
	// 4. 닫기
	public void get(String id) throws ClassNotFoundException, SQLException{
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = conn.prepareStatement
				("select id, name, password from users where id = ?");
		pstmt.setString(1, id);
		
		// select문은 insert, update, delete와 다르다 : 실행 메소드도 다르고 결과도 다르다
		// ResultSet : select문의 검색 결과
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		User user = new User();
		user.setId(rs.getString(1));
		user.setName(rs.getNString(2));
		user.setPassword(rs.getString(3));
		System.out.println("검색 결과 : "+ user);
		
		rs.close();
		pstmt.close();
		conn.close();
	}
}
