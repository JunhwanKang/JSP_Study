package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.entity.Board;

@WebServlet("/board/update")
public class BoardUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		Board board = BoardDao.findById(num);
		request.setAttribute("board", board);
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/update.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		int num = Integer.parseInt(request.getParameter("bno"));
		
		Board board = new Board(num, title, content, writer);
		BoardDao.update(board);
		response.sendRedirect("/move_example/board/list");
	}
}
