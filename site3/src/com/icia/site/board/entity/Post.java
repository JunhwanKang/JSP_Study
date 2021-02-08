package com.icia.site.board.entity;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Post {
	private int pno;
	private String title;
	private String content;
	private String writer;
	@Builder.Default
	private LocalDateTime writeTime = LocalDateTime.now();
	@Builder.Default
	private int readCnt = 0;
}
