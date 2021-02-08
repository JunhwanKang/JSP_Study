package com.icia.site.sboard.controller.uesr;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.site.sboard.dao.MockUserDao;
import com.icia.site.sboard.entity.User;

// 여기도 로그인을 확인해줘야 함 
@WebServlet("/sboard/user/password_check")
public class PasswordCheckServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			response.sendRedirect("/site2/sboard/user/login");
		} else {
			request.setAttribute("viewname", "/sboard/user/password_check.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null)
			response.sendRedirect("/site2/sboard/user/login");
		
		String username = (String)session.getAttribute("username");
		String password = request.getParameter("password");
		User user = MockUserDao.findByIdAndPassword(username, password);
		
		if(user==null) {
			response.sendRedirect("/site2/sboard/user/password_check?error");
		}else {
			session.setAttribute("passwordCheck", true);
			response.sendRedirect("/site2/sboard/user/info");
		}
	}
}
