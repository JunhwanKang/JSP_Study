package com.icia.site.sboard.controller.post;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.sboard.dao.MockPostDao;
import com.icia.site.sboard.entity.Post;

@WebServlet("/sboard/post/delete")
public class PostDeleteSetvlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		Post post = MockPostDao.read(pno);
		request.setAttribute("post", post);
		
		request.setAttribute("viewname", "post/read.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
}
