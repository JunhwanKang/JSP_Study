package com.icia.site.sboard.controller.uesr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.sboard.dao.MockUserDao;
import com.icia.site.sboard.entity.User;

@WebServlet("/sboard/user/join")
public class UserJoinServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("viewname", "user/join.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String irum = request.getParameter("irum");
		String email = request.getParameter("email");
		User user = User.builder().username(username).password(password).irum(irum).email(email).build();
		
	//	System.out.println(user);
		MockUserDao.insert(user);
		response.sendRedirect("/site2/sboard/user/login");
	}
}
