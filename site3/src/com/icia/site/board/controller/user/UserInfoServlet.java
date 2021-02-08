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

@WebServlet("/board/user/info")
public class UserInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/site3/board/user/login");
		} else if(session.getAttribute("passwordCheck")==null) {
			response.sendRedirect("/site3/board/user/password_check");
		} else {
			String username = (String)session.getAttribute("username");
			User user = MockUserDao.findById(username);
			request.setAttribute("user", user);
			request.setAttribute("viewpage", "/board/user/info.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
			rd.forward(request, response);
		}
	}
}