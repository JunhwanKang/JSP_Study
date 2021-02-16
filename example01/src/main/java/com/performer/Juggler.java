package com.icia.example12.performer;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Juggler implements Performer{
	@Value("5")
	private int ball;

	@Override
	public void perform() {
		log.info(ball+"개의 공으로 저글링합니다");
	}
}
