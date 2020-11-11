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
<h1>request 기본 객체</h1>
<hr />
request 기본 객체는 JSP 페이지에서 가장 많이 사용되는 기본 객체로서 웹 브라우저의 요청과 관련이 있다. <br />
웹 브라우저에 웹 사이트의 주소를 입력하면, 웹 브라우저는 해당 웹 서버에 연결한 후 요청 정보를 전송하는데, <br />
이 요청 정보를 제공하는 것이 바로 request 기본 객체이다.
<br /> <br />
request 기본 객체가 제공하는 기능은 다음과 같이 구분된다.
<br />
<ul>
	<li>클라이언트(웹 브라우저)와 관련된 정보 읽기 기능</li>
	<li>서버와 관련된 정보 읽기 기능</li>
	<li>클라이언트가 전송한 요청 파라미터 읽기 기능</li>
	<li>클라이언트가 전송한 요청 헤더 읽기 기능</li>
	<li>클라이언트가 전송한 쿠키 읽기 기능</li>
	<li>속성 처리 기능</li>
</ul>
</div>
</body>
</html>