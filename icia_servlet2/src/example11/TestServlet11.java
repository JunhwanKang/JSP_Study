package example11;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/example11/test")
public class TestServlet11 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String irum = request.getParameter("irum");
		
		String gender = "여자";
		if(request.getParameter("gender").equals("male"))
			gender = "남자";
		
		// 값이 여러개 넘어오는 경우
		String[] hobby = request.getParameterValues("hobby");
		
		// 클래스를 만들어서 값을 넣는다
		User user = new User();
		user.setIrum(irum);
		user.setGender(gender);
		user.setHobby(Arrays.asList(hobby));
		
		// 그냥 서블릿에서 map으로 값을 넣는다
		Map<String, Object> map = new HashMap<>();
		map.put("irum", irum);
		map.put("gender", gender);
		map.put("hobby", Arrays.asList(hobby));
		
		request.setAttribute("user", user);
		request.setAttribute("map", map);
		
		RequestDispatcher rd = request.getRequestDispatcher("/example11/result.jsp");
		rd.forward(request, response);
	}
}
