package com.icia.example03_2.vo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserUpdateDto {
	private String username;
	private String email;
	private String password;
	private String newpassword;
	private List<MultipartFile> profiles;
}
