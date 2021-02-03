package example14;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example14/calc")
public class CalcServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example14/calc.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		
		String operator = request.getParameter("operator");
		int result=0;
		
		if(operator.equals("+")){
			result = val1 + val2;
			operator = "µ¡¼À";
		} else if(operator.equals("-")) {
			result = val1 - val2;
			operator = "»¬¼À";
		} else if(operator.equals("*")) {
			result = val1 * val2;
			operator = "°ö¼À";
		}
		
		request.setAttribute("result", result);
		request.setAttribute("operator", operator);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example14/result.jsp");
		rd.forward(request, response);
	}

}
