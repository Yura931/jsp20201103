<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%-- <%
request.getParameter("dark"); == ${not empty param.dark } -> 이 코드를 var 어트리뷰트에 "dark"라는 이름으로 저장 한 것
왜냐 코드가 길어서 다음에 같은 내용을 사용 할 때 불편하니까 , 간단하게 사용하려고
jstlEx12Form에서 input태그의 name어트리뷰트 값인 "dark"파라미터를 얻어 온것
var = not empty param.dark
%> --%>
<c:if test="${not empty param.dark }" var="dark" scope="session">
	<div style="background-color: black; color:white;">
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt optio laborum in eveniet qui quaerat cumque. Voluptatem eligendi voluptate tenetur consequatur eos quas quia hic nostrum voluptatum ipsa architecto quis.
	</div>
</c:if> 

<c:if test="${not dark}" var="pink" scope="session">
	<div style="background-color: white; color:black;">
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt optio laborum in eveniet qui quaerat cumque. Voluptatem eligendi voluptate tenetur consequatur eos quas quia hic nostrum voluptatum ipsa architecto quis.
	</div>
</c:if>
</body>
</html>