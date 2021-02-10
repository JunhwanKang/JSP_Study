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

@WebServlet("/sboard/user/login")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("viewname", "user/login.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = MockUserDao.findByIdAndPassword(username, password);
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("/shop/sboard/post/list");
		} else {
			response.sendRedirect("/shop/sboard/user/login?error");
		}
	}
}