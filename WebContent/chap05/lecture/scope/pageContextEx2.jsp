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
<h1>pageContext methods</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1"); /* 다른 세 영역보다 보다 좁은 영역, 다른영역이 누구인지 다 알 수 있음. 페이지콘텍스트를 통해 다른 세가지 영역을 읽을 수 있음 */ 
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sesAttr1", "sesVal1");
application.setAttribute("appAttr1", "appVal1");
%>

<%= pageContext.getAttribute("pageAttr1") %>
<%= pageContext.getAttribute("reqAttr1", pageContext.REQUEST_SCOPE) %> <!-- 파라미터를 두개 가지고 있는 메소드 = final static 밸류 사용해서 request 영역에 있는 reqAttr1파라미터값을 불러옴 --> <br />
<%= pageContext.getAttribute("sesAttr1", pageContext.SESSION_SCOPE) %> <br />
<%= pageContext.getAttribute("appAttr1", pageContext.APPLICATION_SCOPE) %>
</body>
</html>












