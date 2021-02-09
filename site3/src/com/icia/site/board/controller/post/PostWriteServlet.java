package com.icia.site.board.controller.post;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icia.site.board.dao.MockPostDao;
import com.icia.site.board.entity.Post;


@WebServlet("/board/post/write")
public class PostWriteServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("viewpage", "post/write.jsp");
		
		RequestDispatcher rd = request.getRequestDispatcher("/board/main.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int pno = MockPostDao.max()+1;
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		Post post = Post.builder().pno(pno).title(title).writer(writer).content(content).writeTime(LocalDateTime.now()).readCnt(0).build();	
		MockPostDao.write(post);
		response.sendRedirect("/site3/board/post/list");
	}
}
