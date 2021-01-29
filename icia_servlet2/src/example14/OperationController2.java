package example14;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example14/test2")
public class OperationController2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example14/input2.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		String op = request.getParameter("op");
		
		int result = val1+val2;
		String operation = "덧셈";
		
		if(op.equals("-")) {
			result = val1 - val2;
			operation = "뺄셈";
		} else if(op.equals("*")){
			result = val1 * val2;
			operation = "곱셈";
		}
			
		
		request.setAttribute("result", result);
		request.setAttribute("operation", operation);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example14/result2.jsp");
		rd.forward(request, response);
	}

}
