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
${Math.abs(-5) } <br />
${Math.random() } <br />
${Math.round(3.14) } <br /> 
<!-- 파라미터 들어가는 값, el영역 중 하나에 들어가 있어야 함 -->
<hr />
<%-- <%
double num = 5.5;
%>
${Math.round(num) } <br />
Exception이 난다. 
round(num->null)로 인식 , num변수를 네개의 영역에 넣어준 적이 없기 때문
 --%>
<%
double num = 5.5;
pageContext.setAttribute("num", num);
%>
${Math.round(num) } <br />

</body>
</html>