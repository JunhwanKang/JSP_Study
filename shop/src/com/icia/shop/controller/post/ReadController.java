package com.icia.shop.controller.post;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.shop.dao.MockPostDao;
import com.icia.shop.entity.Post;

@WebServlet("/sboard/post/read")
public class ReadController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		Post post = MockPostDao.findById(pno);
		request.setAttribute("post", post);
		
		request.setAttribute("viewname", "post/read.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
}
