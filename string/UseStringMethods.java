package string;

public class UseStringMethods {
	public static void main(String[] args) {
		String str = "The String class represents character strings.";
		String findStr = "string";
		String findStr2 = "ss";
		UseStringMethods sample = new UseStringMethods();
		sample.printWords(str);
		sample.findString(str, findStr);
		sample.findAnyCaseString(str, findStr);
		sample.countChar(str, 's');
		sample.printContainWords(str, findStr2);
	}
	public void printWords(String str) {
		String[] strArray = str.split(" ");
		for(String array : strArray) {
			System.out.println(array);
		}
	}
	public void findString(String str, String findStr) {
		System.out.println(findStr+" is appeared at "+str.indexOf(findStr));
	}
	public void findAnyCaseString(String str, String findStr) {
		String findCaseStr = str.toLowerCase();
		System.out.println(findStr+" is appeared at "+findCaseStr.indexOf(findStr) );
	}
	public void countChar(String str, char c) {
		int count = 0;
		char[] strArray = str.toCharArray();
		for(char arr : strArray) {
			if(arr=='s')
				count++;
		}
		System.out.println("char \'"+c+"\' count is "+count);
	}
	public void printContainWords(String str, String findStr2) {
		String[] strArray = str.split(" ");
		for(String arr : strArray) {
			if(arr.contains(findStr2)) 
				System.out.println(arr+" contains "+findStr2);
		}
	}
}
