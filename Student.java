package javaStudy;

public class Student {
	String name, address, phone, email;
	
	public Student() {}
	public Student(String name) {
		this.name = name;
	}
	public Student(String name, String address, String phone, String email) {
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	
	public String toString() {
		return name+" "+address+" "+phone+" "+email;
	}
	public Student[] addStudent() {
		Student[] student = new Student[3];
		student[0] = new Student("Lim");
		student[1] = new Student("Min");
		student[2] = new Student("Sook", "Seoul", "010xxxxxxxx", "ask@godofjava.com");
		return student;
	}
	public void printStudent(Student[] student) {
		for(int i=0; i<student.length; i++) {
			System.out.println(student[i]);
		}
	}
}
