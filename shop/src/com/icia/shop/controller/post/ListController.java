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

@WebServlet("/sboard/post/list")
public class ListController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> list = MockPostDao.finaAll();
		request.setAttribute("list", list);
		
		request.setAttribute("viewname", "post/list.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
}
