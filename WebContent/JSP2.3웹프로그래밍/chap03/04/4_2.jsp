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
<h1>표현식</h1>
<hr />
표현식(Expression)은 어떤 값을 출력 결과에 포함시키고자 할 때 사용된다.

표현식의 구문은 다음과 같다.

&#60;&#37;= 값&#37;&#62;

표현식은 '&#60;&#37;='로 시작해서'&#37;&#62;'로 끝나며, 이 둘 사이에는 출력할 값이 위치한다.
예를 들어 1 부터 10까지의 합을 sum 이라는 변수에 저장 후 변수의 값을 출력하기위해 &#60;&#37;= sum&#37;&#62;이라는 표현식을 사용 할 수 있다.

표현식의 값 부분에 변수 분 아니라 숫자나 문자열 등의 값을 사용 할 수도 있다.

</div>
</body>
</html>