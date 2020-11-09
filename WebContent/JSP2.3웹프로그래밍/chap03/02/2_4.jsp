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
<h1>표현 언어</h1>

JSP의 스크립트 요소(스크립트릿과 표현식 그리고 선언부) 는 자바 문법을 그대로 사용할 수 있기 때문에,
자바 언어의 특징을 그대로 사용할 수 있다는 장점이 있다.
하지만, 스크립트 요소를 사용하면 JSP 코드가 다소 복잡해진다.
<br />
&#60;&#37;<br />
	int a = Integer.parseInt(request.getParameter("a")); <br />
	int b = Integer.parseInt(request.getParameter("b")); <br />
&#37;&#62;<br />
a * b = &#60;&#37;= a * b &#37;&#62;

위 코드는 두개의 문자열 값을 정수로 변환한 뒤, 두 숫자를 곱한 값을 응답으로 출력하는 코드이다.
</div>
</body>
</html>