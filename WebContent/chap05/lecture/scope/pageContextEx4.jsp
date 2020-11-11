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
<h1>pageContext methods:기본 객체 얻기</h1>
8가지 기본 객체
페이지 콘텍트를 통해 나머지 7가지 객체를 얻어낼 수 있음 <br />
페이지 콘텍스트만 넘겨주면 알아서 꺼내 사용할 수 있음 <br />

request : <%= request == pageContext.getRequest() %> <br />
session : <%= session == pageContext.getSession() %> <br />
application : <%= application == pageContext.getServletContext() %> application타입의 두가지 이름 API 찾을 시 ServletContext로 찾아야 함

response : <%= response == pageContext.getResponse() %>

out : <%= out == pageContext.getOut() %> <br />
page : <%= page == pageContext.getPage() %> <br />
config : <%= config == pageContext.getServletConfig() %> <br />
 
</body>
</html>















