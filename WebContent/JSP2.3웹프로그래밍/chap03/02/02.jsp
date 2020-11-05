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
<title>JSP 페이지의 구성 요소</title>
</head>
<body>

<div class="container">

<h1>JSP 페이지의 구성 요소</h1>

<hr />

JSP 페이지를 작성하려면 다양한 요소들이 필요하다.
JSP 페이지에 대한 정보를 지정해야하고, 웹 브라우저가 전송한 데이터를 읽어오는 기능이 필요하며,
JSP 페이지에서 사용할 데이터를 생성하는 실행 코드가 필요하고, 웹 브라우저에 문서 데이터를 전송해주는 기능이 필요하다.
이처럼 HTML 문서를 생성하기 위해서는 다양한 것들이 필요한데, 이를 위해 JSP는 다음과 같은 것을 제공하고 있다.

<br /><br />

<ul>
	<li>디렉티브(Directive)</li>
	<jsp:include page = "2_1Directive.jsp"></jsp:include>
	<li>스크립트 : 스크립트릿(Scriptlet), 표현식(Expression), 선언부(Declaration)</li>
	<li>표현 언어(Expression Language)</li>
	<li>기본 객체(Implicit Object)</li>
	<li>정적인 데이터</li>
	<li>표준 액션 태그</li>
	<li>커스텀 태그(Custom Tag)와 표준 태그 라이브러리(JSTL)</li>
</ul>
</div>

</body>
</html>