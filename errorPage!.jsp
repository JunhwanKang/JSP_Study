<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>  <%--기본값은 false이다. --%>
<% response.setStatus(200); %>     <%-- 에러페이지에 보통 Status404나 500에러가 발생하는데 200은 정상 페이지를 나타냄 
이걸안쓰면 브라우저에서 설정된 Status로 되기때문에 설정해줘야함. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	예외페이지 입니다.<br>
	<%= exception.getMessage() %>
</body>
</html>