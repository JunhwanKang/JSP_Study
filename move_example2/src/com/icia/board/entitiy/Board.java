package com.icia.board.entitiy;

import java.time.LocalDateTime;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private LocalDateTime writeTime;
	private int readCnt;
}
