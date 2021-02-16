package com.icia.example12.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icia.example12.theater.Theater;

public class AnnotationLifeCycleTest {
	public static void main(String[] args) {
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext("/com/icia/example12/test/bean.xml");
		Theater theater = ctx.getBean(Theater.class);
		theater.show();
	}
}
