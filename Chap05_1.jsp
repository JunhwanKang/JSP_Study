<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>구구단 출력</title>
	</head>
	<body>
		<h1>구구단 출력</h1>
		<br />
		<table>
		<tr>
			<%
				for (int i = 2; i <= 9; i++) {
			%>	
			<td>
		<table = border="1">
			<tr>
					<td><%out.print(i+"단");%></td>
			</tr>
			<% 
					for (int j = 1; j <= 9; j++) {
			%>
			<tr>
					<td><%out.print(i + "X" + j + "=" + i * j); %></td>
			</tr>		
			<% 
					}
			%>
		</table>
		</td>
				<%
					}
				%>
			</tr>
			</table>
	</body>
</html>