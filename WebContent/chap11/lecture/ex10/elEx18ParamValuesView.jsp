<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- String 배열 얻어내기 -->
<%
String[] foods = request.getParameterValues("food"); /* 이전방식 */
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
<ul>
<%
for (String food : foods) {
%>
	<li><%= food %></li>
<%
}
%>
</ul>
<hr />

<!-- el에서 기본제공해주는 맵 키 벨류 쌍, 정해 둔 이름으로 저장된 value가 string 배열 타입으로 저장되어 있음, 인덱스 번호로 값 출력 가능 -->
${paramValues.food[0] }
${paramValues.food[1] } 
${paramValues.food[2] } 
${paramValues.food[3] } 
${paramValues.food[4] } 
</body>
</html>