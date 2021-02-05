package com.practice.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice.board.Board;
import com.practice.boardDao.BoardDao;

@WebServlet("/board/write")
public class WriteServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/board/write.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int bno = BoardDao.count()+1;
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		LocalDateTime time = LocalDateTime.now();
		int readCnt = 0;
		
		Board board = new Board(bno, title, content, writer, time, readCnt);
		BoardDao.insert(board);
		
		response.sendRedirect("/practice_board/board/list");
	}
}