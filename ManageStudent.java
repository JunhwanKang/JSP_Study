package javaStudy;

public class ManageStudent {
	public static void main(String[] args) {
		Student[] student = null;
		
		Student st = new Student();
		student = st.addStudent();
		st.printStudent(student);
	}
}
