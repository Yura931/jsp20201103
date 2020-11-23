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
<h3>empty</h3>
${abc } <br />
<!--  attribute가 있는지 없는지 검사하고 싶을 때 -->
<h5>없는 것을 검사</h5>
null : ${empty abc } <br />
<h5>빈 스트링 검사</h5>
"" : ${empty "" } <br />

있어도 비어 있으면 true
<h5>list</h5>
<%
List list = new ArrayList<>();
pageContext.setAttribute("list", list);
%>
list : ${empty list }

<h5>map</h5>
<%
Map map = new HashMap();
pageContext.setAttribute("map", map);
%>
map : ${empty map }

<hr />

<h4>있는지 검사하고 싶을 때</h4>
${not empty abc } <br />
</body>
</html>