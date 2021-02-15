package com.example.example01.sample03_1;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dept {
	private int deptno;
	private String dname;
	private String loc;
}
