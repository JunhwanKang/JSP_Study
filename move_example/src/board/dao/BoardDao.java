package board.dao;

import java.util.*;

import board.entity.*;

public class BoardDao {
	private static List<Board> list = new ArrayList<>();
	
	static {
		list.add(new Board(1, "1번 게시글", "제목 없음", "spring"));
		list.add(new Board(2, "2번 게시글", "제목 없음", "summer"));
		list.add(new Board(3, "3번 게시글", "제목 없음", "winter"));
	}
	
	public static int count() {
		return list.size();
	}
	
	public static List<Board> findAll() {
		return list;
	}
	
	public static Board findById(int bno) {
		for(Board Board:list) {
			if(Board.getBno()==bno)
				return Board;
		}
		return null;
	}
	
	public static void insert(Board Board) {
		list.add(Board);
	}
	
	public static void update(Board Board) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno()==Board.getBno()) 
				list.remove(i);
		}
		list.add(Board);
	}
	
	public static void delete(int bno) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno()==bno) 
				list.remove(i);
		}
	}
}
