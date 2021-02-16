package com.icia.example12.theater;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.icia.example12.performer.Performer;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Theater {
	//@Autowired는 type으로 주입한다. 같은 타입의 객체가 2개 이상이면 오류
	@Autowired
	//@Qualifier로 이름을 지정해 줘야 한다.
	@Qualifier("singer")
	private Performer performer;
	
	@PostConstruct
	public void open() {
		log.info("무대의 막이 올라갑니다. 모두 앉아주세요");
	}
	
	public void show() {
		performer.perform();
	}
	
	@PreDestroy
	public void close() {
		log.info("막을 내립니다. 짝짝짝");
	}
}
