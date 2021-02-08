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

@WebServlet("/board/user/password_check")
public class PasswordCheckServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/site3/board/user/login");
		} else {
			request.setAttribute("viewpage", "/board/user/password_check.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) 
			response.sendRedirect("/site3/board/user/login");
		String username = (String)session.getAttribute("username");
		String password = request.getParameter("password");
		User user= MockUserDao.findByIdAndPassword(username, password);
		
		if(user == null) {
			response.sendRedirect("/site3/board/user/password_check?error");
		} else {
			session.setAttribute("passwordCheck", true);
			response.sendRedirect("/site3/board/user/info");
		}
	}
}
