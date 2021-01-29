package example14;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example14/test")
public class OperationController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example14/input.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		String op = request.getParameter("op");
		int result = 0;
		if(op==null) {
			request.setAttribute("result", "연산자를 선택해주세요.");
		} else {
			if(op.equals("+")) {
				result = val1 + val2;
			} else if(op.equals("-")) {
				if(val2>val1) {
					int  temp = val2;
					val2 = val1;
					val1 = temp;
				}
					result = val1 - val2;
				} else 
					result = val1 * val2;
			request.setAttribute("result", result);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/example14/result.jsp");
		rd.forward(request, response);
	}

}
