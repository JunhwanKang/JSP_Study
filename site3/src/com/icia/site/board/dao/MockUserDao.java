package com.icia.site.board.dao;

import java.util.ArrayList;
import java.util.List;

import com.icia.site.board.entity.User;

public class MockUserDao {
	private static List<User> list = new ArrayList<>();
	
	public static void insert(User user) {
		list.add(user);
	}
	
	public static User findByIdAndPassword(String username, String password) {
		for(User user : list) {
			if(user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return user;
			}
		}
		return null;
	}
	public static User findById(String username) {
		for(User user:list) {
			if(user.getUsername().equals(username)) {
				return user;
			}
		}
		return null;
	}
	
	public static void update(String irum, String email, String username) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getUsername().equals(username)) {
				list.get(i).setIrum(irum);
				list.get(i).setEmail(email);
			}
		}
	}
}
