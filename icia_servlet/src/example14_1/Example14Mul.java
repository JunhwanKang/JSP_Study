package example14_1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/example14_1/mul")
public class Example14Mul extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example14_1/mul_input.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		int result = val1 * val2;

		HttpSession session = request.getSession();
		session.setAttribute("result", result);
		response.sendRedirect("/icia_servlet/example14_1/main");
	}
}
