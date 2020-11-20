<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- Bean이 아닐 경우 ,List-->
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("css");

request.setAttribute("mylist", list);
%>

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
${mylist } 
<hr />
각각의 아이템을 탐색하고 싶을 때
<hr />
${mylist["0"] } <br /> <!-- 인덱스 명시, 인덱스형태가 꼭 숫자가 아니어도 됨 Integer로 parsing 됨  -->
${mylist["1"] } <br />
${mylist[2] } <br />
${mylist[3] } <br />
${mylist[4] } <br />
<hr />

<%-- ${mylist.0 } 뒤에 오는 프로퍼티명이 자바변수 이름형식과 유사하여 숫자가 올 수 없음 --%>

<hr />
</body>
</html>