package business.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.dao.BusinessCardDao;
import business.entity.BusinessCard;

@WebServlet("/business/update")
public class BusinessCardUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		BusinessCard bcard = BusinessCardDao.findById(num);
		request.setAttribute("bcard", bcard);
		
		RequestDispatcher rd = request.getRequestDispatcher("/business/update.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		int num = Integer.parseInt(request.getParameter("num"));

		BusinessCard bcard = new BusinessCard(num, name, company, email, tel);

		BusinessCardDao.update(bcard);
		response.sendRedirect("/move_example/business/list");
	}
}
