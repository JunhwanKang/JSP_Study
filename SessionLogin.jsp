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
			���̵�� ��и�ȣ�� �Է��ϼ���.<hr>
			<table border = "1">
				<tr>
					<td align = "center">���̵�</td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td align = "center">��й�ȣ</td>
					<td><input type = "password" name = "pw"></td>
				</tr>
				<tr>
					<td colspan = "2" align = "right">
						<input type = "submit" value = "�α���"/>
					</td>
			</table>
		</form>	
	<% 
		}else {
			
	%>
		<h3>[<%=session.getAttribute("ID") %>]�� ȯ���մϴ�.</h3>
		<table>
			<tr>
				<td>
					<form action = "SessionChk.jsp" method = "post">
						<input type = "submit" value = "�α��� ����Ȯ��">
					</form>
				</td>
				<td>
					<form action = "SessionQuit.jsp" method = "post">
						<input type = "submit" value = "�α׾ƿ�">
					</form>
				</td>
		</table>
		
	<%
		}
	%>		
</body>
</html>