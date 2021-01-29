package com.icia.example03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example3/mvc_add")
public class MVCAddServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		int result = val1 + val2;
		request.setAttribute("result", result);
		// MVC : 결과를 request에 저장한 후 forward한다.
		RequestDispatcher rd = request.getRequestDispatcher("/example3/result.jsp");
		rd.forward(request, response);
	}

}
