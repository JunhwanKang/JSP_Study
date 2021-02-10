package com.icia.shop.controller.post;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.shop.dao.MockPostDao;
import com.icia.shop.entity.Post;

@WebServlet("/sboard/post/write")
public class WriteController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("viewname", "post/write.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		int pno = MockPostDao.max()+1;
		
		Post post  = Post.builder().title(title).content(content).pno(pno).writer(username).writeTime(LocalDateTime.now()).build();
		MockPostDao.insert(post);
		response.sendRedirect("/shop/sboard/post/list");
	}
}
