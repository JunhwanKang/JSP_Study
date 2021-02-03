package example18;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/card/update")
public class CardUpdateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		Card card = MockCardDao.findById(name);
		request.setAttribute("card", card);
		RequestDispatcher rd = request.getRequestDispatcher("/card/update.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		Card card = new Card(name, tel);
		MockCardDao.update(card);
		response.sendRedirect("/icia_servlet/card/list");
	}
}
