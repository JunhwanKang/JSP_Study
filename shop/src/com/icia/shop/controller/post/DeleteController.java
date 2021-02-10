package com.icia.shop.controller.post;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.shop.dao.MockPostDao;
import com.icia.shop.entity.Post;

@WebServlet("/sboard/post/delete")
public class DeleteController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/shop/sboard/user/login");
		} else {
			request.setCharacterEncoding("utf-8");
			int pno = Integer.parseInt(request.getParameter("pno"));
			String username = (String)session.getAttribute("username");
			
			Post post = MockPostDao.findById(pno);
			if(post.getWriter().equals(username)) {
				MockPostDao.delete(pno);
				response.sendRedirect("/shop/sboard/post/list");
			}
		}
	}
}
