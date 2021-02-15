package com.example.example01.sample01;

import java.awt.Color;

public class UnderstandingDependency {
	// 작업을 위해 Color 클래스의 객체가 필요해 생성 -> Color 클래스에 의존한다
	public static void main(String[] args) {
		Color color = new Color(255, 255, 255);
		System.out.println(color);
	}
}
