package com.example.example01.sample02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// 드라이버 : jdbc 표준을 각 DB업체가 구현
// 연결(Connection) : DB 연결 객체
public class JdbcTest02 {
	public static void main(String[] args) {
		String driver = "orcle.jdbc.driver.OracleDriver";
		String url = "jdbc:orcle:thin:@localhost:1521:xe";
		String user = "wnsghks1017";
		String password = "1234";
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch(SQLException e2) {
				e2.printStackTrace();
			}
		}
		
	}
}
