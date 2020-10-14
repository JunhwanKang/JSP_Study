package javaStudy;

public class MemberDTO {
	public String name;
	public String phone;
	public String email;

	public MemberDTO() {
		//	 아무 정보도 모를 때
	}

	public MemberDTO(String name) {
		this.name = name;  //이름만알 때
	}
	
	public MemberDTO(String name, String phone) {
		this.name = name;
		this.phone = phone;
	}
	
	public MemberDTO(String name, String phone, String email) {
		this.name = name;
		this.phone = phone;
		this.email = email;
	}
	public String toString() {
		return "Name= "+name+" Phone= "+phone+" Email= "+email;
	}
}