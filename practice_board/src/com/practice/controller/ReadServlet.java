package com.practice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice.board.Board;
import com.practice.boardDao.BoardDao;

@WebServlet("/board/read")
public class ReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		Board board = BoardDao.findSelect(bno);
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/read.jsp");
		rd.forward(request, response);
	}
}
