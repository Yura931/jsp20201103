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
 <!-- 기본 영역 page -->
<c:url value="jstlEx01.jsp" var="myUrl" scope="request" >
 	<c:param name="id" value="3" />  <!-- 쿼리스트링으로 name, value 넣어주던 방식을 사용하지 않고 , param태그를 이용해 저장 가능 -->
 	<c:param name="name" value="john" />
</c:url> 
<a href="${myUrl }">예제 01</a> <!-- 값을 저장해 쓰고 싶을 때 -->
</body>
</html>