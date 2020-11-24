<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 반복해서 무언가 해야 할 때
몇번 반복할 것인지, 적절한 어트리뷰트 사용
begin 부터 end 까지 반복실행 
begin, end의 값 자체를 forEach안에서 사용하고 싶을 때 ,변수 지정 가능한 어트리뷰트 var 사용
바에 값을 담을 변수를 지정해주고 el문법으로 사용해주면 된다. -->

<c:forEach var="i" begin="5" end="7">
	<h1>반복 ${i }</h1>
</c:forEach>
</body>
</html>