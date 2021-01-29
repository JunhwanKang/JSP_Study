package example12;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example12/test")
public class TestController12 extends HttpServlet {
	// 화면을 보여준다
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example12/input.jsp");
		rd.forward(request, response);
	}

	// 처리한다
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		
		int result = val1 + val2;
		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("/example12/result.jsp");
		rd.forward(request, response);
	}

}
