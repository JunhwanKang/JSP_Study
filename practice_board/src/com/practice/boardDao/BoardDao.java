package com.practice.boardDao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.websocket.server.WsWriteTimeout;

import com.practice.board.Board;

public class BoardDao {
	// ���� ���� ����Ʈ�� ����
	private static List<Board> list = new ArrayList<Board>();
	
	// �⺻���� �� �ִ� ���� ���� ������� (��� Ȯ�� �뵵)
	static {
		list.add(new Board(1, "ù��° �Խñ�", "������ ����", "�տ���", LocalDateTime.now(), 0));
		list.add(new Board(2, "�ι�° �Խñ�", "������ ����", "�����", LocalDateTime.now(), 0));
		list.add(new Board(3, "����° �Խñ�", "������ ����", "���Ȱ�", LocalDateTime.now(), 0));
	}
	// ���� �߰��ϴ� �޼ҵ�
	public static void insert(Board board) {
		list.add(board);
	}
	// ���� �����ϴ� �޼ҵ�
	public static void delete(int bno) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno() == bno)
				list.remove(i);
		}
	}
	// ���� �����ϴ� �޼ҵ�
	public static void update(int bno, String title, String content) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno() == bno) {
				list.get(i).setTitle(title);
				list.get(i).setContent(content);
			}
		}
	}
	// ���� ��� �����ͼ� �ѷ��ִ� �޼ҵ�
	public static List<Board> findAll() {
		return list;
	}
	// �� ��ȣ�� �Ķ���ͷ� �ؼ� �ش��ϴ� ���� �������� �޼ҵ�
	public static Board findSelect(int bno){
		for(Board li : list) {
			if(li.getBno() == bno)
				return li;
		}
		return null;
	}
	// ���� ������ count��
	public static int count() {
		return list.size();
	}
}
