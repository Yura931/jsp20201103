<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 데이터를 저장하고 있는 bean클래스를 만들어 4개의 영역 에 어트리뷰트를 넣어놓고 다른페이지에서 꺼내볼 수 있었다.
다른페이지에서 꺼내 프로퍼티를 볼 수 있었음 -->
<jsp:useBean id="car" class="chap08.Car" scope="page"> <!-- scope 네가지영역에 넣어놓음 -->
	<jsp:setProperty name="car" property="name" value="kia" />
	<jsp:setProperty name="car" property="speed" value="100" />
</jsp:useBean>



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

<h3>scriptlet</h3>
<%
chap08.Car carData = (chap08.Car) pageContext.getAttribute("car"); // scope 영역인 page에서부터 getAttribute 해오기
%>

<h3>expression</h3>
<%= carData.getName() %> <br /> 
<%= carData.getSpeed() %>

<h3>action tag</h3>
<jsp:getProperty property="name" name="car" /> <br />
<jsp:getProperty property="speed" name="car" />

<h3>expression language(EL) 표현 언어</h3> 
${car.name } <br />
${car.speed } <br /> 
</body>
</html>