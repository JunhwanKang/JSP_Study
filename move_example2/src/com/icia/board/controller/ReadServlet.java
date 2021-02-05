package com.icia.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.board.dao.BoardDao;
import com.icia.board.entitiy.Board;

@WebServlet("/board/read")
public class ReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		Board board = BoardDao.findById(bno);
		if(board != null) {
			BoardDao.addReadCnt(bno);
		}
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/read.jsp");
		rd.forward(request, response);
	}
}
