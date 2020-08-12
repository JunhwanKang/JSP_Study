<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	<%
		if(session.getAttribute("ID")==null){
	%>
		<form action = "SessionAttributeSet.jsp" method = "post">
			아이디와 비밀먼호를 입력하세요.<hr>
			<table border = "1">
				<tr>
					<td align = "center">아이디</td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td align = "center">비밀번호</td>
					<td><input type = "password" name = "pw"></td>
				</tr>
				<tr>
					<td colspan = "2" align = "right">
						<input type = "submit" value = "로그인"/>
					</td>
			</table>
		</form>	
	<% 
		}else {
			
	%>
		<h3>[<%=session.getAttribute("ID") %>]님 환영합니다.</h3>
		<table>
			<tr>
				<td>
					<form action = "SessionChk.jsp" method = "post">
						<input type = "submit" value = "로그인 상태확인">
					</form>
				</td>
				<td>
					<form action = "SessionQuit.jsp" method = "post">
						<input type = "submit" value = "로그아웃">
					</form>
				</td>
		</table>
		
	<%
		}
	%>		
</body>
</html>