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

// 이 서블릿에 접근한 경우의 수
// 1. 로그인이 안된 상태 -> redirect 로그인 페이지로 보냄
// 2. 로그인은 되었지만 비밀번호 확인 안된 상태 ->  redirect 비밀번호 체크 페이지
// 3. 로그인, 비밀번호 확인 모두 OK -> forward로 내정보 페이지 

@WebServlet("/sboard/user/info")
public class UserInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("username")==null) {
			// 내정보 보기를 선택했는데 로그인이 안된 경우 (로그인 안하고 바로 내정보 보기로 주소 타이핑해서 들어온 경우) -> 로그인 페이지로 보내기
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
