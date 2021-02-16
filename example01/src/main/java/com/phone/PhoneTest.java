package com.icia.example08.phone;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PhoneTest {
	public static void main(String[] args) {
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext("/com.icia.example08/test/bean.xml");
		Phone phone = ctx.getBean(Phone.class);
		phone.introduce();
	}
}
