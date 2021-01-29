package com.icia.example01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 경로 */ : 모든 경로
// 경로 /  : defaultServlet의 경로 > 그 서블릿이 html, css를 포함한 요청을 처리해야 한다.
//         프로그래머가 매핑 걸지 않은 요청을 처리하는 서블릿 (서블릿 말고 딴 요청을 서비스)
// 			그렇지만 /를 경로에 나타내고 싶다면 스프링 프레임워크가 필요하다

//@WebServlet("/")
public class Sample7 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.print(request.getRequestURL());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
