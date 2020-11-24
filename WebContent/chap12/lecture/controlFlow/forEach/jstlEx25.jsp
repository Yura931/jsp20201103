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
<h1>방명록</h1>
<form action="jstlEx25Process.jsp" method="post">
제목 : <input type="text" name="title" />
<br />
<textarea name="body" cols="30" rows="3"></textarea>
<br />
<input type="submit" value="등록" />
</form>
<hr />

<c:if test="${empty list }">
<h3>목록 없음</h3>
</c:if>

<c:if test="${not empty list }">
<ul>
	<c:forEach items="${list }" var="item" varStatus="stat">		
	<li><a href="jstlEx25Detail.jsp?id=${stat.index }">${item.title }</a></li> <!-- for본문이 몇번째 돌아가고 있는지 알고있는 어트리뷰트 varStatus -->
	</c:forEach>
</ul>
</c:if>
<ul>

</ul>
</body>
</html>