package business.entity;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BusinessCard {
	private int num;
	private String name;
	private String company;
	private String email;
	private String tel;
}
