package com.icia.site.board.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.site.board.dao.MockUserDao;
import com.icia.site.board.entity.User;

@WebServlet("/board/user/login")
public class UserLoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("viewpage", "user/login.jsp");
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = MockUserDao.findByIdAndPassword(username, password);
		
		if(user!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("/site3/board/post/list");
		}else {
			response.sendRedirect("/site3/board/user/login?error");
		}
	}
}
