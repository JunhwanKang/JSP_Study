package com.example.example01.sample03_1;

import java.sql.SQLException;

public class DeptAppTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		DeptApp app = new DeptApp();
		app.insert(new Dept(90, "test", "seoul"));
		
		app.findById(90);
		
		app.delete(90);
		
		app.findById(90);
	}
}
