package example12;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example12/add")
public class TestServlet12 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// �Է� ȭ���� �����ش�.
		RequestDispatcher rd = request.getRequestDispatcher("/example12/add.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// submit�� �޾Ƽ� ó���Ѵ�.
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		int result = val1 + val2;
		request.setAttribute("result", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example12/result.jsp");
		rd.forward(request, response);
	}
}
