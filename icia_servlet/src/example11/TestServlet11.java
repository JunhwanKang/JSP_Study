package example11;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/example12/join")
public class TestServlet11 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String birthdayStr = request.getParameter("birthday");
		String level = request.getParameter("level");
		
		String[] str = birthdayStr.split("-");
		int year = Integer.parseInt(str[0]);
		int month = Integer.parseInt(str[1]);
		int day = Integer.parseInt(str[2]);
		
		LocalDate birthday = LocalDate.of(year, month, day);
		
		String encodedPassword = BCrypt.hashpw(password, BCrypt.gensalt(10));
		Level lev = Level.valueOf(level);
		
		Member member = new Member(username, encodedPassword, email, birthday, lev);
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("/example11/result.jsp");
		rd.forward(request, response);
	}

}
