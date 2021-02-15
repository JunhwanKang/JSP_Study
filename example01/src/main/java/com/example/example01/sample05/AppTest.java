package com.example.example01.sample05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AppTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// DB에 대한 연결 작업을 수행 후 Connection 객체를 주입한다
		// 그런데 이건 그저 연결 책임을 떠 넘긴 것으로 생각할 수 있다 -> DI를 전담하는 프레임워크를 사용하자
		int choice = 1;
		UserManagerApp app = new UserManagerApp();
		if(choice==1) {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "spring", "1234");
			app.setConn(connection);
		} else if(choice==2) {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "test", "test");
			app.setConn(connection);
		} else if(choice==3) {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/test", "test", "test");
			app.setConn(connection);
		}
	}
}
