<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	�α��εǾ����ϴ�.<hr/>
	<h3>���� �����Ͻ� ID�� [<%=session.getAttribute("ID") %>]�Դϴ�.</h3><hr/>
	<h3>���� ���� ID�� [<%=session.getId() %>]�Դϴ�.</h3><hr/>
	<table>
		<tr>
			<td>
				<form action = "SessionLogin.jsp" method = "post">
					<input type = "submit" value = "ù ȭ������">
				</form>
			</td>
			<td>
				<form action = "SessionQuit.jsp" method = "post">
					<input type = "submit" value = "�α׾ƿ�">
				</form>
			</td>
		</tr>	
	</table>	
</body>
</html>