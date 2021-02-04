package namecard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import namecard.dao.NamecardDao;
import namecard.entity.Namecard;

@WebServlet("/namecard/write")
public class NamecardWriteServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/namecard/write.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email"); 
		String tel = request.getParameter("tel"); 
		int num = NamecardDao.count()+1;
		
		Namecard namecard = new Namecard(num, name, email, tel);
		NamecardDao.insert(namecard);
		response.sendRedirect("/move_example/namecard/list");
	}
}
