package com.icia.example03_3.dto;

import java.time.LocalDate;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserJoinDto {
	private String username;
	private String password;
	private String email;
	private LocalDate birthday;
	private List<MultipartFile> sajins;
}
