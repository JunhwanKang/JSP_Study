package com.icia.shop.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.shop.dao.MockUserDao;
import com.icia.shop.entity.User;

@WebServlet("/sboard/user/password_check")
public class PasswordCheckController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/shop/sboard/user/login");
		} else {
			request.setAttribute("viewname", "user/password_check.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/shop/sboard/user/login");
		} else {
			String password = request.getParameter("password");
			String username = (String)session.getAttribute("username");
			User user = MockUserDao.findByIdAndPassword(username, password);
			if(user==null) {
				response.sendRedirect("/shop/sboard/user/pasword_check?error");
			} else {
				session.setAttribute("passwordCheck", true);
				response.sendRedirect("/shop/sboard/user/info");
			}
		}
	}
}
