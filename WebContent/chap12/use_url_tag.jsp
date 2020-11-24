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
<c:url value="http://search.daum.net/search" var="searchUrl">
	<c:param name="w" value="blog" /> <!-- 파라미터 추가 태그 -->
	<c:param name="q" value="공원" />
</c:url>

<ul>
<li>${searchUrl }</li>
<li><c:url value="/use_if_tag.jsp" /></li> <!-- contextPath를 붙여주게 되는 것, request.getContextPath -> 이런식으로 꺼내 사용하던 방식을 url태그를 사용하면 좀 더 간단하게 사용가능하다 -->
<li><c:url value="/use_if_tag.jsp" /></li>
</ul>
</body>
</html>