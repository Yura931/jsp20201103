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
총 4개의 영역이 있음
<h1>java 웹 앱의 4개의 영역</h1>
<hr />
<ul>
<!-- Attribute를 붙여서 사용할 수 있음 -->
<li>page - pageContext 객체</li> <!-- 각 페이지 영역은 pageContext가 관리하고 있음 -->
<li>request - request 객체</li> <!-- 하나의 요청이 시작해서 끝날 때 까지의 영역, 관련된 객체 = request , 여러페이지 나눠요청되는 경우 있음 ex) include, forward -->
<li>session - session 객체</li> <!-- 여러개 게스트가 공유하는 브라우저 영역 -->
<li>application - application 객체</li> <!-- 세션보다 좀 더 넓은 영역 , 모든 리퀘스트, 모든 세션이 공유하는 영역, 모든 서블릿이 공유하는 객체 다른, Attribute request를 사용하면 jsp에서 어플리케이션에 있는 Attribute를 꺼내 읽을 수 있음 -->
</ul>

<%
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sessionAttr1", "sessionVal1");
application.setAttribute("appAttr1", "appVal1");
%>

</body>
</html>