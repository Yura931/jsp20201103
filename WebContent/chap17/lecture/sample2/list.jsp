<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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
<div class="container">
	<h1>글 목록</h1>
	<ul>
		<c:forEach items="${posts }" var="post" varStatus = "status"> <!-- post객체를 담은 list의 이름을 items에 넣어주면 setTitle, setBody메소드에 담긴 모든 인덱스 list를 var어트리뷰트에 지정해준 "post"이름에 담는다 -->
			<li><a href="<%=request.getContextPath()%>/sample2/detaile?idx=${status.index }">${post.title }</a></li> <!-- ${post.title }링크를 클릭하면 idx가${staus.index }인 sample2/detaile경로로 넘어가게 됨-->  
		</c:forEach>
	</ul>
</div>
</body>
</html>