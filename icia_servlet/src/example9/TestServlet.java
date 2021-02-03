package example9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example9/test")
public class TestServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		
		request.setAttribute("name", name);
		request.setAttribute("gender", gender);
		request.setAttribute("hobby", hobby);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example9/result.jsp");
		rd.forward(request, response);
	}
}
