package com.icia.site.sboard.controller.post;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.sboard.dao.MockPostDao;
import com.icia.site.sboard.entity.Post;

@WebServlet("/sboard/post/list")
public class PostListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> list = MockPostDao.list();
		request.setAttribute("list", list);
		
		request.setAttribute("viewname", "post/list.jsp");
		
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
}
