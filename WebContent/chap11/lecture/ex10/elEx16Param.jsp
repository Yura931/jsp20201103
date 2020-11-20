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
<%= request.getParameter("name") %> <!-- name이라는 이름의 파라미터를 읽겠다. get방식으로 쿼리스트링 ?name = donald name value 쌍으로 되어있는 형태가 map과 유사 -->

<hr />

${param } <!-- 파라미터들이 name value 쌍으로 구성 -->
<br />
${param.name } <br /> 
${param["name"] } <br />
<!-- 쿼리스트링으로 ?name=yura 값을 넣어주면
parameter로 받아온 name의 값인 yura가 23행 24행에서 출력 된다. -->
</body>
</html>