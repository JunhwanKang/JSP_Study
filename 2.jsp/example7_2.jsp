<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 스크립트릿 => JSTL
	// 표현식 => EL
	int val1 = Integer.parseInt(request.getParameter("val1"));
	int val2 = Integer.parseInt(request.getParameter("val2"));
	
	request.setAttribute("result", val1+val2);
	
	// 이동하는 방법: forward(다음 작업), redirect(새 작업)
	RequestDispatcher rd = request.getRequestDispatcher("example7_3.jsp");
	rd.forward(request, response);
%>
</body>
</html>