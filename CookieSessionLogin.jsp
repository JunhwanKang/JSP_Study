<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>��Ű�� ���� ���� ����</title>
</head>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		if(cookies !=null && cookies.length>0){
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("rememberId")
				&& cookies[i].getValue().equals("keep")){
					rememberId = cookies[i].getValue();	
				}
				if(cookies[i].getName().equals("id")){
					id = cookies[i].getValue();
				}
			}
		}
	%>
<body>
	<form action = "CookieSessionSet.jsp" method = "post">
		���̵�� ��й�ȣ�� �Է��Ͻÿ�<hr/>
		<table border = "1">
			<tr>
				<td align = "center">���̵�</td>
				<td><input type = "text" name = "id" value = "<%=id == null? "" : id %>" /></td>
			</tr>
			<tr>
				<td align = "center">��й�ȣ</td>
				<td><input type = "password" name = "pw" /></td>
			</tr>
			<tr>
				<td colspan = "2" align = "right">
					<input type = "checkbox" name = "rememberId" value = "keep" 
					<%=(rememberId == null ? "" : "checked=\"checked\"") %> />���̵� ���
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "right">
					<input type = "submit" value = "�α���">
				</td>
			</tr>				
		</table>
	</form>
</body>
</html>