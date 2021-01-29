package example17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/example17/cart")
public class CartServlet extends HttpServlet {
	// 장바구니에 출력하기
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션도 꺼내와야 함, 장바구니를 출력할 때 세션에 장바구니가 존재해야 한다.
		HttpSession session = request.getSession();
		
		if(session.getAttribute("cart")==null) {
			List<String> cart = new ArrayList<String>();
			session.setAttribute("cart", cart);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/example17/cart_list.jsp");
		rd.forward(request, response);
	}

	// 장바구니에 추가하기
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		List<String> cart;
		if(session.getAttribute("cart")==null) {
			 cart = new ArrayList<String>();
			session.setAttribute("cart", cart);
		}else {
			cart = (List<String>)session.getAttribute("cart");
		}
		cart.add(request.getParameter("product"));
		session.setAttribute("cart", cart);
		doGet(request, response);
		//response.sendRedirect("icia_servlet2/example17/cart");
	}

}
