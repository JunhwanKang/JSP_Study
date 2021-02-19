package com.icia.example03_2.vo;

import java.time.LocalDate;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class User {
	private String username;
	private String irum;
	private String email;
	private String password;
	private LocalDate birthday;
	private LocalDate joinday;
	private Level level;
	private int loginFailureCnt;
	private boolean enabled;
	List<String> profiles;
}
