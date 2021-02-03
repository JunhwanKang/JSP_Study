package example14_1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/example14_1/main")
public class Example14Main extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지가 리로딩되면 값 출력이 사라졌으면 좋겠다.
		HttpSession session = request.getSession();
		if(session.getAttribute("result")!=null) {
			request.setAttribute("result", session.getAttribute("result"));
			session.removeAttribute("result");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/example14_1/main.jsp");
		rd.forward(request, response);
	}
}
