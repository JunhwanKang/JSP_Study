package example5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example5/test")
public class TestServlet5 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("문자 집합: " + response.getCharacterEncoding());
		System.out.println("문서 형식: " + response.getContentType());
		System.out.println("상태 코드: " + response.getStatus());
		System.out.println("out: " + response.getWriter());
	}
}
