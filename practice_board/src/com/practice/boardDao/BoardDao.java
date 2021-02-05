package com.practice.boardDao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.websocket.server.WsWriteTimeout;

import com.practice.board.Board;

public class BoardDao {
	// 값을 담을 리스트를 생성
	private static List<Board> list = new ArrayList<Board>();
	
	// 기본으로 들어가 있는 글을 직접 만들어줌 (기능 확인 용도)
	static {
		list.add(new Board(1, "첫번째 게시글", "내용은 셀프", "손오공", LocalDateTime.now(), 0));
		list.add(new Board(2, "두번째 게시글", "내용은 없음", "사오정", LocalDateTime.now(), 0));
		list.add(new Board(3, "세번째 게시글", "내용은 있음", "저팔계", LocalDateTime.now(), 0));
	}
	// 글을 추가하는 메소드
	public static void insert(Board board) {
		list.add(board);
	}
	// 글을 삭제하는 메소드
	public static void delete(int bno) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno() == bno)
				list.remove(i);
		}
	}
	// 글을 수정하는 메소드
	public static void update(int bno, String title, String content) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getBno() == bno) {
				list.get(i).setTitle(title);
				list.get(i).setContent(content);
			}
		}
	}
	// 글을 모두 가져와서 뿌려주는 메소드
	public static List<Board> findAll() {
		return list;
	}
	// 글 번호를 파라미터로 해서 해당하는 글을 가져오는 메소드
	public static Board findSelect(int bno){
		for(Board li : list) {
			if(li.getBno() == bno)
				return li;
		}
		return null;
	}
	// 글의 갯수를 count함
	public static int count() {
		return list.size();
	}
}
