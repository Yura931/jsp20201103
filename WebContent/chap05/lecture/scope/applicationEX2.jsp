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
<h1>get attribute</h1>
<h2><%= request.getAttribute("reqAttr1") %></h2> <!-- 같은 페이지에서만 읽을 수 있음 -->
<h2><%= session.getAttribute("sessionAttr1") %></h2> <!-- 같은 브라우저에서만 읽을 수 있음 -->
<h2><%= application.getAttribute("appAttr1") %></h2> <!-- 시크릿모드까지도 읽을 수 있음 -->
<!-- 
session 여러 탭에서 같은 요청을 날릴 수 있기 때문에 위험
application 여러 브라우저가 동시에 리퀘스트를 날릴 수 있음 
여러 쓰레드가 공유하는 객체이기 때문에 쓰지 않는 것이 좋음
가능한 좁은 영역에 먼저 사용
 -->
 </body>
</html>