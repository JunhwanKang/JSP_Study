package com.icia.site.sboard.controller.post;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.site.sboard.dao.MockPostDao;
import com.icia.site.sboard.entity.Post;

@WebServlet("/sboard/post/update")
public class PostUpdateSetvlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null)
			response.sendRedirect("/site2/sboard/user/login");
		else {
			request.setAttribute("viewname", "post/write.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username") == null)
			response.sendRedirect("/site2/sboard/user/login");
		else {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String username = (String) session.getAttribute("username");
			
			Post post = Post.builder().pno(0).title(title).content(content).writer(username).writer(username)
					.writeTime(LocalDateTime.now()).readCnt(0).build();
			MockPostDao.write(post);
			response.sendRedirect("/site2/sboard/post/list");
		}
	}

}
