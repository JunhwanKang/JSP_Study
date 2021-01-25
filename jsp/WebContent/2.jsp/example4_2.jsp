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
	// 사용자가 넘긴 값을 꺼낼때는 getParameter
	String data1 = request.getParameter("data1");
	String data2 = request.getParameter("data2");
	String data3 = request.getParameter("data3");
	
	// 백에서 request에 값을 저장할 때는 setAttribute
	request.setAttribute("data1", data1);
	request.setAttribute("data2", data2);
	request.setAttribute("data3", data3);
%>
<p>data1 : <%=data1 %>, data2 : <%=data2 %>, data3 : <%=data3 %><p>
<p>data1 : ${data1 }, data2 : ${data2 }, data3 : ${data3 }<p> 
</body>
</html>