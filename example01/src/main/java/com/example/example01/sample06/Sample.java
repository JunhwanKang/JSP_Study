package com.example.example01.sample06;

import lombok.extern.slf4j.Slf4j;

// slf4j : 로깅표준  레벨 : trace < debug < info < warn < error 순
	// info 이상이면 화면에 출력이 됨
@Slf4j
public class Sample {
	public void hello() {
		log.info("안녕");
	}
}
