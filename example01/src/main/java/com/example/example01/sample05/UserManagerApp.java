package com.example.example01.sample05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lombok.Setter;

public class UserManagerApp {
	// db를 받아온다 그냥 굳이 내가 무슨 db를 쓰는지 알 필요없다.
	// 결합력이 약하게 하는게 좋다 (약결합)
	@Setter
	private Connection conn;
	
	public void add(User user) throws ClassNotFoundException, SQLException{
		
		PreparedStatement pstmt = conn.prepareStatement("insert into users values(?,?,?)");

		pstmt.setString(1, user.getId());
		pstmt.setString(2, user.getName());
		pstmt.setString(3, user.getPassword());

		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
	}
	public void get(String id) throws ClassNotFoundException, SQLException{
		PreparedStatement pstmt = conn.prepareStatement
				("select id, name, password from users where id = ?");
		pstmt.setString(1, id);
		
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
