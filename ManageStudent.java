package javaStudy;

public class ManageStudent {
	public static void main(String[] args) {
//		Student[] student = null;
//		
		ManageStudent mst = new ManageStudent();
		Student st = new Student();
//		student = st.addStudent();
//		st.printStudent(student);
		mst.checkEquals();
	}
	public void checkEquals() {
		Student a = new Student("Min", "Seoul", "010xxxxxxxx", "ask@goodjava.com");
		Student b = new Student("Min", "Seoul", "010xxxxxxxx", "ask@goodjava.com");
		
		if(a.equals(b))
			System.out.println("Equal");
		else
			System.out.println("Not Equal");
	}
}
