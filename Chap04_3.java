

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chap04_3
 */
@WebServlet("/Chap04_3")
public class Chap04_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chap04_3() {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String repwd = request.getParameter("repwd");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");
		
		if (pwd != repwd){
			out.println("<html>");
			out.println("  <head>");
			out.println("    <title>��������</title>");
			out.println("  </head>");
			out.println("  <body>");
			out.println("    <h2>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</h2>");
			out.println("  </body>");
			out.println("</html>");
		}
		else{
			out.println("<html>");
			out.println("  <head>");
			out.println("    <title>��������</title>");
			out.println("  </head>");
			out.println("  <body>");
			out.println("    <h2>�ۼ��Ͻ� ������ �Ʒ��� �����ϴ�.</h2>");
			out.println("�̸�: "+name);
			out.println("<hr>����: "+gender+"</hr>");
			out.println("<hr>���̵�: "+id+"</hr>");
			out.println("<hr>�ּ�: "+address+"</hr>");
			out.println("<hr>��ȭ��ȣ: "+tel+"</hr>");
			out.println("<hr>�̸����ּ�: "+email+"</hr>");
			out.println("  </body>");
			out.println("</html>");
		
			if (pwd != repwd){
				out.println("<html>");
				out.println("  <head>");
				out.println("    <title>��������</title>");
				out.println("  </head>");
				out.println("  <body>");
				out.println("    <h2>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</h2>");
				out.println("  </body>");
				out.println("</html>");
			}


			if(hobby == null)
				out.print("[������ ��̰� �����ϴ�.]");
			else {
				out.println("<table border =\"1\">");
				for (int i =0; i<hobby.length; i++){
					out.println("<tr>");
					out.println("<td width=\"80\" align = \"center\">");
					out.println(hobby[i]);
					out.println("</td>");
					out.println("</tr>");
				}
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
		}
	}
}
