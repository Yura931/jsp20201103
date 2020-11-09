<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>


<%
String food = request.getParameter("food");
if (food != null){
	// 세션에 추가
	List<String> cart = (List<String>) session.getAttribute("cart"); // List는 Object가 아니기 때문에 형변환 해 주어야 한다.
	if (cart == null) {
		cart = new ArrayList<>();
		session.setAttribute("cart", cart);
	}
	cart.add(food);
}
%>

<form action="" method="post">
<select name="food" id="">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="bruger">버거</option>
	<option value="choco">초코</option>
	<option value="icecream">아이스크림</option>
</select>
<br />
<input type="submit" value="장바구니 담기" />
</form>
<a href="cart.jsp">장바구니 보기</a>
</body>
</html>