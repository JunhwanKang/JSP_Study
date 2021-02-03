package example15;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example15/sum")
public class SumServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example15/sum.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		int sum=0;
		int max = val1;
		int min = val2;
		if(val2>val1) {
			max = val2;
			min = val1;
		}
		for(int i=min;i<=max; i++ ) {
			sum += i;
		}
		request.setAttribute("max", max);
		request.setAttribute("min", min);
		request.setAttribute("sum", sum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example15/result.jsp");
		rd.forward(request, response);
	}
}
