

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chap04_2
 */
@WebServlet("/Chap04_2")
public class Chap04_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chap04_2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		if(name.equals("admin") && pwd.equals("1234")){
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Login Servlet</title>");
			out.println("<body>");
			out.println("�α����� ȯ���մϴ�.");
			out.println("</body>");
			out.println("</head>");
			out.println("</html>");
		}
		
		else{
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Login Servlet</title>");
			out.println("<body>");
			out.println("���̵� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			out.println("</body>");
			out.println("</head>");
			out.println("</html>");
			}
		}
	}


