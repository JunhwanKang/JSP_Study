package com.icia.site.board.controller.post;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.board.dao.MockPostDao;
import com.icia.site.board.entity.Post;

@WebServlet("/board/post/list")
public class PostListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> list = MockPostDao.list();
		request.setAttribute("list", list);
		
		request.setAttribute("viewpage", "post/list.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
		rd.forward(request, response);
	}
}