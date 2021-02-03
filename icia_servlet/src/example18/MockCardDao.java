package example18;

import java.util.ArrayList;
import java.util.List;

public class MockCardDao {
	private static List<Card> list = new ArrayList<Card>();
	
	public static List<Card> findAll(){
		return list;
	}
	
	public static Card findById(String name) {
		for(Card card:list) {
			if(card.getName().equals(name))
				return card;
		}
		return null;
	}
	
	public static void insert(Card card) {
		list.add(card);
	}
	
	public static void update(Card card) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getName().equals(card.getName()))
				list.remove(i);
		}
		list.add(card);
	}
	
	public static void delete(String name) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getName().equals(name))
				list.remove(i);
		}
	}
}
