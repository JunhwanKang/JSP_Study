package namecard.dao;

import java.util.*;

import namecard.entity.*;

public class NamecardDao {
	// �ʱ�ȭ ���� : �ν��Ͻ� �ʱ�ȭ => ���� �ʱ�ȭ => ������
	// private static int a = 10;
	private static List<Namecard> list = new ArrayList<>();
	
	static {
		list.add(new Namecard(1, "ȫ�浿", "hkd@naver.com", "01012345678"));
		list.add(new Namecard(2, "����ġ", "juc@daum.net", "01022223333"));
		list.add(new Namecard(3, "�Ӳ���", "lim@gmail.com", "01043215678"));
	}
	public static int count() {
		return list.size();
	}
	
	public static List<Namecard> findAll() {
		return list;
	}
	
	public static Namecard findById(int num) {
		for(Namecard namecard:list) {
			if(namecard.getNum()==num)
				return namecard;
		}
		return null;
	}
	
	public static void insert(Namecard namecard) {
		list.add(namecard);
	}
	
	public static void update(Namecard namecard) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNum()==namecard.getNum()) 
				list.remove(i);
		}
		list.add(namecard);
	}
	
	public static void delete(int num) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNum()==num) 
				list.remove(i);
		}
	}
}
