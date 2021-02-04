package namecard.entity;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Namecard {
	private int num;
	private String name;
	private String email;
	private String tel;
}
