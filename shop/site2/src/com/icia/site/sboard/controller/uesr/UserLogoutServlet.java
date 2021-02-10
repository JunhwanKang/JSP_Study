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

@WebServlet("/sboard/user/logout")
public class UserLogoutServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("/site2/sboard/post/list");
	}
}
