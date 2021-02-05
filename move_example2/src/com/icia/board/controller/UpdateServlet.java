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


@WebServlet("/board/update")
public class UpdateServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDao.update(bno, title, content);
		response.sendRedirect("/move_example2/board/list");
	}
}
