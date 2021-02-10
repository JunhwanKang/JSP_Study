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

@WebServlet("/sboard/user/info")
public class InfoController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null)
			response.sendRedirect("/shop/sboard/user/login");
		else {
			if(session.getAttribute("passwordCheck")==null) {
				response.sendRedirect("/shop/sboard/user/password_check");
			} else {
				String username = (String)session.getAttribute("username");
				User user = MockUserDao.findById(username);
				request.setAttribute("user", user);
				
				request.setAttribute("viewname", "user/info.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
				rd.forward(request, response);
			}
		}
	}
}
