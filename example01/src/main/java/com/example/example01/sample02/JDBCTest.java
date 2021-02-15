package com.example.example01.sample02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTest {
	public static void main(String[] args) {
		String driver ="oracle.jdbc.driver.OracleDriver";
		// xe: 오라클 서버의 id(sid). 오라클 xe버전의 sid는 무조건 xe
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "TIGER";
		
		// 드라이버를 메모리에 로딩한다. -> 생성자 호출 직전
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
			System.out.println("연결 객체: "+ connection);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾을 수 없습니다");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
