package c.exception.practice;

public class Calculator {
	public static void main(String[] args) {
		Calculator calc = new Calculator();
		try {
			calc.printDivide(1,2);
			calc.printDivide(1,0);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public void printDivide(double d1, double d2) throws Exception{
			double result = d1/d2;
			if(d2==0) {
				throw new Exception("Seceond value can't be Zero");
			}
			System.out.println(result);
	}
}
