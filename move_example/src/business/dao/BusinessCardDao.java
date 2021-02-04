package business.dao;

import java.util.*;

import business.entity.*;


public class BusinessCardDao {
	private static List<BusinessCard> list = new ArrayList<>();
	
	static {
		list.add(new BusinessCard(1, "�տ���", "icia", "hkd@naver.com", "01012345678"));
		list.add(new BusinessCard(2, "���Ȱ�", "LG", "juc@daum.net", "01022223333"));
		list.add(new BusinessCard(3, "�����", "Samsung", "lim@gmail.com", "01043215678"));
	}
	
	public static int count() {
		return list.size();
	}
	
	public static List<BusinessCard> findAll() {
		return list;
	}
	
	public static BusinessCard findById(int num) {
		for(BusinessCard BusinessCard:list) {
			if(BusinessCard.getNum()==num)
				return BusinessCard;
		}
		return null;
	}
	
	public static void insert(BusinessCard BusinessCard) {
		list.add(BusinessCard);
	}
	
	public static void update(BusinessCard BusinessCard) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNum()==BusinessCard.getNum()) 
				list.remove(i);
		}
		list.add(BusinessCard);
	}
	
	public static void delete(int num) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getNum()==num) 
				list.remove(i);
		}
	}
}
