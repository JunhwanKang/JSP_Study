package com.icia.example03_2.vo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class UserJoinDto {
	private String username;
	private String irum;
	private String password;
	private String email;
	private LocalDate birthday;
	private List<MultipartFile> sajins;
}
