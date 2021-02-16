package com.example.example01.sample06;

import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import lombok.extern.slf4j.Slf4j;

// 스프링 MVC 프로젝트를 만들면 설정 xml 파일이 만들어지고 그곳에 설정을 잡으면 된다
// 

@Slf4j
public class DITest {
	public static void main(String[] args) {
		// 원래는 자동으로 만들어주고 특정위치에 xml파일을 만들어줌
		// 하지만 우리는 연습으로 수동으로 만들어줘서 xml을 선택해줌
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext("com/example/example01/sample06/bean.xml");
		// ctx에서 빈을 클래스로 검색할 수 있다(by type) -> 같은 클래스의 객체가 하나만 있을 경우
		Date date = ctx.getBean(Date.class);
		log.info("현재시각: {}", date);
		// ctx에서 빈을 이름으로 검색 (name) -> 같은 클래스가 2개일 경우 id로 찾아온다(하나여도 가능)
		Sample sample = (Sample) ctx.getBean("sample");
		sample.hello();
	}
}
