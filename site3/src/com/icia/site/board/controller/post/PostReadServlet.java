package com.icia.site.board.controller.post;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.board.dao.MockPostDao;
import com.icia.site.board.entity.Post;

@WebServlet("/board/post/read")
public class PostReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		Post post = MockPostDao.read(pno);
		request.setAttribute("post", post);
		
		request.setAttribute("viewpage", "post/read.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
		rd.forward(request, response);
	}
}
