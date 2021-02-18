package com.icia.example03_1.vo;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain=true)
public class Member {
	private String id;
	private String password;
	private String email;
	private LocalDate joindate;
	private LocalDate birthday;
	private Level level;
	private int loginFailurecnt;
	private boolean enabled;
	private String profile;
}
