package example10;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example10/join")
public class TestServlet10 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String birthdayStr = request.getParameter("birthday");
		
		String[] str = birthdayStr.split("-");
		int year = Integer.parseInt(str[0]);
		int month = Integer.parseInt(str[1]);
		int day = Integer.parseInt(str[2]);
		LocalDate birthday = LocalDate.of(year, month, day);
		
		User user = new User(username, password, email, birthday);
		request.setAttribute("user", user);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example10/result.jsp");
		rd.forward(request, response);
	}
}
