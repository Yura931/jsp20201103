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
<div class="container">
<h1> 기본 객체</h1>

JSP는 웹 어플리케이션 프로그래밍을 하는 데 필요한 기능을 제공해주는 '기본 객체 (implicit object)'를 제공하고 있다.
request, response, session, application, page등 다수의 기본 객체가 존재하는데, 
이들은 각각 요청 파라미터 읽어오기, 응답 결과 전송하기, 세션 처리하기, 웹 어플리케이션 정보 읽어오기 등의 기능을 제공하고 있다.
이들 기본 객체를 모든 JSP 페이지에서 사용하는 것은 아니며, request 기본 객체 session 기본 객체 그리고 response 기본 객체를 주로 사용한다.

</div>

</body>
</html>