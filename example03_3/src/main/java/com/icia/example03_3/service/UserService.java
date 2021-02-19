package com.icia.example03_3.service;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.icia.example03_3.dto.UserJoinDto;
import com.icia.example03_3.entity.User;

@Service
public class UserService {
	private User user;
	private ModelMapper modelMapper = new ModelMapper();
	
	public void join(UserJoinDto dto ) {
		User user = modelMapper.map(dto, User.class);
		if(dto.getSajins()!=null) {
			for(MultipartFile sajon:dto.getSajins())
				profiles.add(sajin.geto)
		}		
		System.out.println(user);
		this.user = user;
	}
	
	public boolean login(String username, String password) {
		return user.getUsername().equals(username) && user.getPassword().equals(password);
	}
	
	public boolean passwordCheck(String username, String password) {
		return user.getUsername().equals(username) && user.getPassword().equals(password);
	}
	
	public User info(String username) {
		return user;
	}
}
