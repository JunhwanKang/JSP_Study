<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "com.project.model.*" %>
<jsp:useBean id = "dto" class = "com.project.model.Dto"/>
<jsp:setProperty name="dto" property="*"/>   
<!DOCTYPE html>
	
<html>
<body>
	<%
		Dao dao = new Dao();
		if(request.getParameter("pwd").equals(request.getParameter("chkPwd")) == false){
	%>		
			패스워드가 일치 하지 않습니다.<br/>
			<%@ include file = "member.jsp" %>
	<% 		
		}else{
			dao.insertMember(dto);
		%> 
	<h3>회원가입이 완료되었습니다.</h3><br/>
	다시 로그인해주세요.<br/>
	<button><a href = "http://localhost:8090/Login/login.jsp">로그인 화면으로</a></button>
	
	<%
		}
	%>
</body>
</html>