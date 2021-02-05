package com.practice.board;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private LocalDateTime writeTime;
	private int readCnt;
}
