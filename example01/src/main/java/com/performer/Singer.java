package com.icia.example12.performer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Singer implements Performer{
	@Value("애국가")
	private String song;
	@Override
	public void perform() {
		log.info(song+"를 부릅니다");
	}
}
