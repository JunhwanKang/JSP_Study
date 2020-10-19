package c.exception;

public class ThrowableSample2 {
	public static void main(String[] args) {
		ThrowableSample2 sample = new ThrowableSample2();
		sample.throwException(13);
		try {
			sample.throwsException(13);
		} catch(Exception e) {
			
		}
	}
	public void throwException(int number) {
		try{
			if(number>12) {
				throw new Exception("Number is over than 12");
			}
			System.out.println("Number is"+number);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void throwsException(int number) throws Exception{
		if(number>12) {
			throw new Exception("Number is over than 12");
		}	
		System.out.println("Number is"+number);
	}	
}