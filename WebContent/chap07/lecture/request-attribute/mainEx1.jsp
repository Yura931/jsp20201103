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

<h1>main jsp</h1>
<%
Object o = new Object();
System.out.println(o.hashCode());

request.setAttribute("obj", o);
%>

<!-- request와 붙인 객체도 attribute라 부른다 -->
<!-- 스트링 데이터가 아닌 다른 객체를 넣고 싶을 때 -->

 <!-- 같은 request를 사용하는 객체 -->
 
<jsp:forward page= "subEx1.jsp">
	<jsp:param value="newVal" name="newParam"></jsp:param>
</jsp:forward>
</body>
</html>