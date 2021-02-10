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

// �� ������ ������ ����� ��
// 1. �α����� �ȵ� ���� -> redirect �α��� �������� ����
// 2. �α����� �Ǿ����� ��й�ȣ Ȯ�� �ȵ� ���� ->  redirect ��й�ȣ üũ ������
// 3. �α���, ��й�ȣ Ȯ�� ��� OK -> forward�� ������ ������ 

@WebServlet("/sboard/user/info")
public class UserInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			// ������ ���⸦ �����ߴµ� �α����� �ȵ� ��� (�α��� ���ϰ� �ٷ� ������ ����� �ּ� Ÿ�����ؼ� ���� ���) -> �α��� �������� ������
			response.sendRedirect("/site2/sboard/user/login");
		} else if(session.getAttribute("passwordCheck")==null) {
			response.sendRedirect("/site2/sboard/user/password_check");
		} else {
			String username = (String)session.getAttribute("username");
			User user = MockUserDao.findById(username);
			request.setAttribute("user", user);
			
			request.setAttribute("viewname", "/sboard/user/info.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/sboard/main.jsp");
			rd.forward(request, response);
		}
	}
}
