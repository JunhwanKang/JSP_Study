package example18;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/card/list")
public class CardListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Card> list = MockCardDao.findAll();
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("/card/list.jsp");
		rd.forward(request, response);
	}
}
