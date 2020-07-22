<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
	<head>
		<title>홀수 짝수 여부 출력</title>
	</head>
	<body>
		<h1>1~10까지 홀수 짝수 여부 출력</h1><br/>
		<table border = "1">
		<%
			for(int i =0; i<=10; i++){
		%>
		<tr>
				<td><%=i%></td>
				<%
				if(i%2 == 0){
				%>
					<td><%="짝수입니다."%></td>
				<% 
					}
				else{
				%>	
					<td><%="홀수입니다."%></td>
				<%
					}
			}
				%>	
			<tr>
		</table>
	</body>
</html>