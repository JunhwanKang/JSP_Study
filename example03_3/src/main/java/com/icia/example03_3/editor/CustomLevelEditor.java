package com.icia.example03_3.editor;

import java.beans.PropertyEditorSupport;

import org.springframework.stereotype.Component;

import com.icia.example03_3.entity.Level;


@Component
public class CustomLevelEditor extends PropertyEditorSupport {
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Level level;
		if(text.equals("NORMAL") || text.equals("1"))
			level = Level.NORMAL;
		else if(text.equals("SILVER") || text.equals("2"))
			level = Level.SILVER;
		else if(text.equals("GOLD") || text.equals("3"))
			level = Level.GOLD;
		else
			throw new IllegalArgumentException("잘못된 레벨입니다.");
		setValue(level);
	}
}
