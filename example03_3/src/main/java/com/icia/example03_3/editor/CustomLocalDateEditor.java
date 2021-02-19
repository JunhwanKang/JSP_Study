package com.icia.example03_3.editor;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;

import org.springframework.stereotype.Component;

@Component
public class CustomLocalDateEditor extends PropertyEditorSupport {
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		String str[] = text.split("-");
		int year = Integer.parseInt(str[0]);
		int month = Integer.parseInt(str[1]);
		int day = Integer.parseInt(str[2]);
		
		setValue(LocalDate.of(year, month, day));
	}
}
