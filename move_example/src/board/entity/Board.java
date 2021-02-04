package board.entity;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	private int bno;
	private String title;
	private String content;
	private String writer;
}
