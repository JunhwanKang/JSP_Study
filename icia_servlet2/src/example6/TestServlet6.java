package example6;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestServlet6")
public class TestServlet6 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서버측 수신 거부
		response.setStatus(400);
		// 권한 없음
		response.setStatus(403);
		// not found
		response.setStatus(404);
		// method
		response.setStatus(405);
		// 서버측 실행 오류 - Null Pointer Exception
		response.setStatus(500);
	}
}
