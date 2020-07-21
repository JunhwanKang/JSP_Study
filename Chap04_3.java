

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
			out.println("    <title>개인정보</title>");
			out.println("  </head>");
			out.println("  <body>");
			out.println("    <h2>비밀번호가 일치하지 않습니다.</h2>");
			out.println("  </body>");
			out.println("</html>");
		}
		else{
			out.println("<html>");
			out.println("  <head>");
			out.println("    <title>개인정보</title>");
			out.println("  </head>");
			out.println("  <body>");
			out.println("    <h2>작성하신 내용은 아래와 같습니다.</h2>");
			out.println("이름: "+name);
			out.println("<hr>성별: "+gender+"</hr>");
			out.println("<hr>아이디: "+id+"</hr>");
			out.println("<hr>주소: "+address+"</hr>");
			out.println("<hr>전화번호: "+tel+"</hr>");
			out.println("<hr>이메일주소: "+email+"</hr>");
			out.println("  </body>");
			out.println("</html>");
		
			if (pwd != repwd){
				out.println("<html>");
				out.println("  <head>");
				out.println("    <title>개인정보</title>");
				out.println("  </head>");
				out.println("  <body>");
				out.println("    <h2>비밀번호가 일치하지 않습니다.</h2>");
				out.println("  </body>");
				out.println("</html>");
			}


			if(hobby == null)
				out.print("[선택한 취미가 없습니다.]");
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
