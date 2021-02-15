package com.example.example01.sample03_1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeptApp {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String username ="scott";
	String password ="TIGER";
	public void insert(Dept dept) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = conn.prepareStatement("insert into dept values(?,?,?)");
		pstmt.setInt(1, dept.getDeptno());
		pstmt.setString(2, dept.getDname());
		pstmt.setString(3, dept.getLoc());
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	public void findById(int deptno) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = conn.prepareStatement("select deptno, dname, loc from dept where deptno=?");
		pstmt.setInt(1, deptno);
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			Dept dept = new Dept();
			dept.setDeptno(rs.getInt(1));
			dept.setDname(rs.getString(2));
			dept.setLoc(rs.getString(3));
			System.out.println(dept);
		} else {
			System.out.println("검색에 실패했습니다");
		}
		
		rs.close();
		pstmt.close();
		conn.close();
	}
	public void delete(int deptno) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		Class.forName(driver);
		conn = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = conn.prepareStatement("delete from dept where deptno=?");
		pstmt.setInt(1, deptno);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
}
