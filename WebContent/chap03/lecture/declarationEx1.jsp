<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- java에서 변수를 선언하고 값을 저장하는 것처럼 변수, 메소드 등을 선언할 수 있음 -->
  
<%!
int i = 3;
static int j =10;
%>

<%!
int k = 20;
%>

<%!
void mymethod() {
	System.out.println("hello");
}
%>

<%! 
static void mymethod2() {
System.out.println("hello static");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>declaration - 선언</title>
</head>
<body>

<h1>Lorem ipsum dolor.</h1>
<!-- 선언한 변수, 메소드를 html문 안에서 스크립트릿으로 사용 가능 -->
<% this.mymethod(); %>
<% mymethod2(); %>
</body>
</html>






