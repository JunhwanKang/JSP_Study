package com.icia.shop.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icia.shop.dao.MockUserDao;

@WebServlet("/sboard/user/resign")
public class ResignController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// getSession�� ������ �����ϸ� ������ �������� ������ ���� ����
		HttpSession session = request.getSession();
		if(session.getAttribute("username")!=null) {
			String username = (String)session.getAttribute("username");
			MockUserDao.delete(username);
			session.invalidate();
		}
		response.sendRedirect("/shop/sboard/post/list");
	}
}
