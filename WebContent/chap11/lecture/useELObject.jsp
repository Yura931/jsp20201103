<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	request.setAttribute("name", "최범균");
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

요청 URI: ${pageContext.request.requestURI } <br />
reqeust의 name 속성: ${requestScope.name } <br /> <!-- 페이지영역 생략 가능, 생략시 pageScope영역부터 자동으로 찾음 , map인경우 키로 값을 불러올 수 있음-->

code 파라미터: ${param.code } <br /> 
<%= request.getParameter("code") %> <br />
<!-- "code"라는 이름을 가진 파라미터를 value와 함께 넣어 놓은 것 --> 

</body>
</html>