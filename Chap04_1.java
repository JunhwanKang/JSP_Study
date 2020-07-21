

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chap04_1
 */
@WebServlet("/Chap04_1")
public class Chap04_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chap04_1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset = UTF-8");
		request.setCharacterEncoding("utf-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		response.setContentType("text/html; charset = UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter	out = response.getWriter();
		
		out.println("<html>");
		out.println("  <head>");
		out.println("	   <title>get Servlet</title>");
		out.println("  </head>");
		out.println("  <body>");
		out.println("	   <h2>");
		out.println("이 요청은 doPost에서 처리되었습니다.<br/>");
		out.println("name: [" + name + "]");
		out.println("	   </h2>");
		out.println("  </body>");
		out.println("</html>");
	}

}
