package com.icia.example10.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icia.example10.knight.Knight;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class FieldDITest {
	public static void main(String[] args) {
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext("com/icia/example10/test/bean.xml");
		Knight knight = ctx.getBean(Knight.class);
		log.info(knight.introduce());
	}
}
