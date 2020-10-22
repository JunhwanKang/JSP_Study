package string;

public class StringCheck {
	public static void main(String[] args) {
		StringCheck sample = new StringCheck();
		
		String addresses[] = new String[] {
				"서울시 구로구 신도림동",
				"경기도 성남시 분당구 정자동 개발 공장",
				"서울시 구로구 개봉동"
		};
		sample.checkAddress(addresses);
		sample.containAddress(addresses);
		sample.checkMatch();
		sample.checkIndexOf();
		sample.checkLastIndexOf();
		sample.checkCharAt();
		sample.checkSubstring();
		sample.checkSplit();
		sample.checkTrim();
		sample.checkReplace();
		sample.checkFormat();
	}
	public void checkAddress(String[] addresses) {  //시작과 끝
		int startCount=0, endCount=0;
		String startText="서울시";
		String endText="동";
		for(String address:addresses) {
			if(address.startsWith(startText)) {
				startCount++;
			}
			if(address.endsWith(endText)) {
				endCount++;
			}
		}
		System.out.println("Starts with "+startText+" count is "+startCount);
		System.out.println("Ends with "+endText+" count is "+endCount);
	}
	public void containAddress(String[] addresses) {  //찾고자하는 내용이 존재하는지 확인
		int containCount=0;
		String containText="구로";
		for(String address : addresses) {
			if(address.contains(containText)) {
				containCount++;
			}
		}
		System.out.println("Contains "+containText+" count is "+containCount);
	}
	public void checkMatch() {
		String text = "This is a text";
		String compare1 = "is";
		String compare2 = "this";
		System.out.println(text.regionMatches(2, compare1, 0, 1));
		System.out.println(text.regionMatches(5, compare1, 0, 2));
		System.out.println(text.regionMatches(true, 0, compare2, 0, 4));
	}
	public void checkIndexOf() {
		String text = "Java technology is both a programming language and a platform.";
		System.out.println(text.indexOf('a'));
		System.out.println(text.indexOf("a "));
		System.out.println(text.indexOf('a', 20));
		System.out.println(text.indexOf("a ", 20));
		System.out.println(text.indexOf('z'));
	}
	public void checkLastIndexOf() {
		String text = "Java technology is both a programming language and a platform.";
		System.out.println(text.lastIndexOf('a'));
		System.out.println(text.lastIndexOf("a "));
		System.out.println(text.lastIndexOf('a', 20));
		System.out.println(text.lastIndexOf("a ", 20));
		System.out.println(text.lastIndexOf('z'));
	}
	public void checkCharAt() {
		String text  = "Java technology is both a programming language and a platform.";
		String text2 = " 가나다라마바사";
		System.out.println(text.charAt(3));
		System.out.println(text2.charAt(0));
		System.out.println(text2.charAt(1));
		
		char values[] = new char[] {'J','a','v','a'};
		String javaText = String.copyValueOf(values);
		System.out.println(javaText);
	}
	public void checkSubstring() {
		String text = "Java technology";
		String temp = text.substring(5);
		System.out.println(temp);
		String temp2 = text.substring(0, 4);
		System.out.println(temp2);
		String temp3 = text.substring(5, 9);
		System.out.println(temp3);
	}
	public void checkSplit() {
		String text = "Java technology is both a programming language and a platform.";
		String[] splitArray = text.split(" ");
		for(String temp : splitArray) {
			System.out.println(temp);
		}
	}
	public void checkTrim() {
		String strings[] = new String[] {
			" a", " b ", "   c", "d   ", "e   f","   "
		};
		for(String str : strings) {
			System.out.println("["+str+"]");
			System.out.println("["+str.trim()+"]");
		}
	}
	public void checkReplace() {
		String text = "This String class represents character strings.";
		System.out.println(text);
		System.out.println(text.replace('s', 'z'));
		System.out.println(text.replace("tring", "trike"));
		System.out.println(text.replaceAll(" ", "|"));
		System.out.println(text.replaceFirst(" ", "|"));
	}
	public void checkFormat() {
		String text = "제 이름은 %s입니다. 지금까지 %d권의 책을 썼고, "
				+"하루에 %f %%의 시간을 책을 쓰는데 할애하고 있습니다.";
		String realText = String.format(text, "이상민", 7, 10.5);
		System.out.println(realText);
	}
}
