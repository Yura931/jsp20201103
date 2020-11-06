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
<title>스크립트 요소</title>
</head>
<body>
<div class="container">
	JSP에서 문서의 내용을 동적으로 생성하기 위해 사용되는 것이 스크립트 요소이다.
	스크립트 요소를 사용하면 사용자가 폼에 입력한 정보를 데이터베이스에 저장할 수 있으며,
	데이터베이스로부터 게시글 목록을 읽어와 출력할 수도 있다.
	또한, 스크립트를 사용하면 자바가 제공하는 다양한 기능도 사용할 수 있다.
	JSP를 스크립트 언어라고 부르는 이유가 바로 막강한 스크립트 코드를 제공해주기 때문이다.
	
	JSP의 스크립트 요소는 다음과 같이 세 가지가 있다.
	
	<ul>
	<li>표현식(Expression) : 값을 출력한다.</li>
	<li>스크립트릿(Scriptlet) : 자바 코드를 실행한다.</li>
	<li>선언부(Declaration) : 자바 메서드(함수)를 만든다.</li>
	</ul>
</div>
</body>
</html>