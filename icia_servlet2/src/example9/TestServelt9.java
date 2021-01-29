package example9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example9/test")
public class TestServelt9 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int val1 = Integer.parseInt(request.getParameter("val1"));
			int val2 = Integer.parseInt(request.getParameter("val2"));
			request.setAttribute("result", val1+val2);
			
		} catch(NumberFormatException e) {
			request.setAttribute("result", "숫자만 입력하세요");
		}
		RequestDispatcher rd = request.getRequestDispatcher("/example9/result.jsp");
		rd.forward(request, response);
	}
}
