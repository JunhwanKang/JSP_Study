package com.icia.site.board.controller.post;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.site.board.entity.Post;

@WebServlet("/board/post/update")
public class PostUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Post post = Post.builder().title(title).content(content).build();
		
		request.setAttribute("viewpage", "post/update.jsp");
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/site3/board/post/list");
	}
}
