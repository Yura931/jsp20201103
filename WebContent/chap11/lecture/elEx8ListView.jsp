<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

String[] foods = request.getParameterValues("food"); // food "name"을 가진 value를 get 함
request.setAttribute("fav", foods);

%>
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
<h1>유라가 좋아하는 음식</h1>
${fav[0] } <br /> 
${fav[1] } <br />
${fav[2] } <br />
${fav[3] } <br />
${fav[4] } <br />
<hr />
<%
for (int i = 0; i <= foods.length; i++) {
	pageContext.setAttribute("i", i); // 현재 jsp파일에서 보여져야 하므로 pageContext영역에 넣어주어야 함
%>
	${fav[i] } <br />
<%
}
%>	
<hr />
<%
for (String food : foods) {
%>
	<%= food %> <br />
<%
}
%>
<hr />
<%
int i = 0;
for (String food : foods) {
	pageContext.setAttribute("i", i);
%>
	${fav[i] } <br />
<%	
	i++;
}
%>

</body>
</html>