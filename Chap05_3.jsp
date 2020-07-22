<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%!
		public int add(int a , int b){
		return a+b;
		}	
		public int minus(int a , int b){
		return a-b;
		}
		public int mix(int a , int b){
		return a*b;
		}
		public int share(int a , int b){
		return a/b;
		}
		public int namerge(int a , int b){
		return a%b;		
		}
	
%>
<html>
	<head>
		<title>오칙연산 메소드 사용</title>
	<%int a =10, b =3; %>
	</head>
	<body>
	<h1><%= a+" ,"+b+"의 오칙연산 결과"%></h1>
	<%int num = add(a,b); %>
	<%int num1 = minus(a,b); %>
	<%int num2 = mix(a,b); %>
	<%int num3 = share(a,b); %>
	<%int num4 = namerge(a,b); %>
	<%= a+"과"+b+"의 덧셈 결과는 ["+num+"] 입니다." %><br/>
	<%= a+"과"+b+"의 뺄셈 결과는 ["+num+"] 입니다." %><br/>
	<%= a+"과"+b+"의 곱셈 결과는 ["+num+"] 입니다." %><br/>
	<%= a+"과"+b+"의 나눗셈 결과는 ["+num+"] 입니다." %><br/>
	<%= a+"과"+b+"의 나머지 연산 결과는 ["+num+"] 입니다." %><br/>
	</body>
</html>