package com.icia.example03_3.entity;

import java.time.LocalDate;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class User {
	private String username;
	private String password;
	private String email;
	private LocalDate birthday;
	private LocalDate joinday;
	private Level level = Level.NORMAL;
	private int loginFailureCnt = 0;
	private boolean enabled = true;
	private List<String> profiles;
}
