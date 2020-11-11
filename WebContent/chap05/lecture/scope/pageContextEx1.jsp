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
<h1>pageContext 는 하나의 페이지의 영역</h1>
<br />
<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAttr1", "reqVal1");
%>

<h4>같은페이지에서 attribute를 꺼내면</h4>
<br />
<%= pageContext.getAttribute("pageAttr1") %> <br />
<%= request.getAttribute("reqAttr1") %> <br />
<br />
<h4>include를 하면</h4>
<jsp:include page="pageContextEx1Sub.jsp" /> <!-- include 당한 건 pageContext 사용 불가능 --> 


</body>
</html>