package com.icia.board.dao;

import java.time.LocalDateTime;
import java.util.*;

import com.icia.board.entitiy.Board;


public class BoardDao {
	private static List<Board> list = new ArrayList<>();
	
	static {
		list.add(new Board(1, "1�� �Խñ�", "���� ����", "spring", LocalDateTime.now(), 0));
		list.add(new Board(2, "2�� �Խñ�", "���� ����", "summer", LocalDateTime.now(), 0));
		list.add(new Board(3, "3�� �Խñ�", "���� ����", "winter", LocalDateTime.now(), 0));
	}
	
	public static void addReadCnt(int bno) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno()==bno) {
				list.get(i).setReadCnt(list.get(i).getReadCnt()+1);
			}
		}
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
	
	public static void update(int bno, String title, String content) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno()==bno) {
				list.get(i).setTitle(title);
				list.get(i).setTitle(content);
			}
		}
	}
	
	public static void delete(int bno) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno()==bno) 
				list.remove(i);
		}
	}
}
