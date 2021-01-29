package example10;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example10/test")
public class TestServlet10 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String irum = request.getParameter("irum");
		
		String gender = "여자";
		if(request.getParameter("gender").equals("male"))
			gender = "남자";
		
		// 값이 여러개 넘어오는 경우
		String[] hobby = request.getParameterValues("hobby");
		
		request.setAttribute("irum", irum);
		request.setAttribute("gender", gender);
		request.setAttribute("hobby", hobby);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example10/result.jsp");
		rd.forward(request, response);
	}
}
