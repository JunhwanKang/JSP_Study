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

@WebServlet("/sboard/user/join")
public class JoinController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("viewname", "user/join.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String irum = request.getParameter("irum");
		User user = User.builder().username(username).password(password).email(email).irum(irum).build();
		MockUserDao.insert(user);
		response.sendRedirect("/shop/sboard/user/login");
	}
}
