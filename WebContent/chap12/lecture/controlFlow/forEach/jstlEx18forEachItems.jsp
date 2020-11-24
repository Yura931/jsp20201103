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
<!-- 리스트,배열, 맵 등을 적절한 영역에 담아 주었을 때 탐색하는 어트리뷰트
items 어트리뷰트 사용
각 아이템을 담는 변수 선언
 -->
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("servlet");
list.add("css");
list.add("jquery");
list.add("js");

request.setAttribute("list", list);
%>
<!-- page영역에 담길 명칭, var어트리뷰트에 지정해주면 됨, 
태그가 실행 되면 items에 담긴 list인자들이 myItem변수에 한번씩 담기게 된다. -->
<c:forEach var="myitem" items="${list }"> 
	${myitem } <br />
</c:forEach>
</body>
</html>