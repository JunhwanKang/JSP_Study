package com.project.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	
	private String url = "jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8 & serverTimezone=UTC";
	private String user = "jspbook";
	private String password = "1234";
	
	public Dao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	//회원정보 데이터베이스 저장 메소드
	public void insertMember(Dto dto){

		Connection conn = null;	
		PreparedStatement pstmt = null; 
		String sql = "insert into member values (?,?,?,?)"; 
		try {
			conn = DriverManager.getConnection(url, user, password);			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getPhone());
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	//로그인 체크 메소드
	public Boolean Check(String id, String pwd) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select id,pwd from member where id = ? and pwd = ?";
		Boolean result = false;
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			} else {
				result = false;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
