package example8;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.math.NumberUtils;

@WebServlet("/example8/test")
public class TestServlet8 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int val1 = NumberUtils.toInt(request.getParameter("val1"), -99999999);
		int val2 = NumberUtils.toInt(request.getParameter("val2"), -99999999);
		int result = val1 + val2;
		
		response.setContentType("text/html;charset-utf-8");
		PrintWriter out = response.getWriter();
		if(val1 == -99999999 || val2 == -99999999)
			out.println("숫자를 입력하세요");
		else
			out.println("합계: " + result);
		
		out.flush();
		
		/*
		int val1 = Integer.parseInt(request.getParameter("val1"));
		int val2 = Integer.parseInt(request.getParameter("val2"));
		
		int result = val1+val2;
		
		PrintWriter out = response.getWriter();
		out.print(result);
		*/
	}
}
