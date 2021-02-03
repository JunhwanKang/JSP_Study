package example14_1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/example14_1/sub")
public class Example14Sub extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/example14_1/sub_input.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		int result = val1 - val2;
		
		// /example14_1/sub에서 계산 후 /example14_1/main으로 이동 후 결과 출력
		// redirect하면 주소가 변경되고 request가 새로 만들어진다 그러므로 session애 저장한다.
		HttpSession session = request.getSession();
		session.setAttribute("result", result);
		response.sendRedirect("/icia_servlet/example14_1/main");
	}

}
