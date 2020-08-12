<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	로그인되었습니다.<hr/>
	<h3>현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.</h3><hr/>
	<h3>현재 세션 ID는 [<%=session.getId() %>]입니다.</h3><hr/>
	<table>
		<tr>
			<td>
				<form action = "SessionLogin.jsp" method = "post">
					<input type = "submit" value = "첫 화면으로">
				</form>
			</td>
			<td>
				<form action = "SessionQuit.jsp" method = "post">
					<input type = "submit" value = "로그아웃">
				</form>
			</td>
		</tr>	
	</table>	
</body>
</html>