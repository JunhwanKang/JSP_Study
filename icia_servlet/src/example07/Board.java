package example07;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Board {
	private int bno;
	private String title;
	private String writer;
	private String writeTime;
}
