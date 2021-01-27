<%@page import="mart.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<Product> list = new ArrayList<>();
	list.add(new Product(1, "마스크", 1000));
	list.add(new Product(2, "치약", 2000));
	list.add(new Product(3, "볼펜", 500));
	list.add(new Product(4, "도시락", 4500));
	session.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
	$(document).ready(function(){
		$(".cart_btn").on("click", function(){
			var $pno = $(this).attr("data-pno");
			// 값이 넘어가는지 확인해 보려면 get으로 일단 확인 -> 주소창에서 확인
			var $form = $("<form>").attr("action", "cart.jsp").attr("method","post");
			$("<input>").attr("type","hidden").attr("name","pno").val($pno).appendTo($form);
			$form.appendTo("body").submit();
			//자식.appendTo(부모)-> 결과는 자식
			//부모,append(자식) ->결과가 부모  -> 
		});
	});
</script>
</head>
<body>
	<!-- product.jsp -> cart.jsp -> cart_print.jsp -->
	<table class="table table=hover">
		<tr><th>번호</th><th>상품명</th><th>가격</th><th></th></tr>
		<c:forEach items="${list}" var="p">
			<tr>
				<td>${p.pno}</td>
				<td>${p.pname}</td>
				<td>${p.price}</td>
				<!-- data-pno는 각각의 버튼이 어떤 상품인지 인지할 수 있게 해줌 -->
				<td><button class="cart_btn" data-pno="${p.pno}"><i class="fa fa-cart-plus" aria-hidden="true"></i></button></td>
			</tr>	
		</c:forEach>
	</table>
</body>
</html>