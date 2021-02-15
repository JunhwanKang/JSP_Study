package com.example.example01.sample03;

import java.sql.SQLException;

public class AppTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		UserManagerApp app = new UserManagerApp();
		app.add(new User("spring", "홍길동", "1234"));
		
		app.get("spring");
	}
}	
