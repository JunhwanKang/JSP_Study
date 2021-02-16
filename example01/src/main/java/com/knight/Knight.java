package com.icia.example10.knight;

import org.springframework.beans.factory.annotation.Autowired;

import com.icia.example10.quest.Quest;

public class Knight {
	// @Autowired를 지정하면 스프링이 타입을 보고 자동으로 주입
	@Autowired
	private Quest quest;
	public String introduce() {
		return "나는 "+ quest.getQuestGoal();
	}
}
