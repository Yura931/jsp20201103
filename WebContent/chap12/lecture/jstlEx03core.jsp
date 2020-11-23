<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!-- taglib directive 어떠한 태그를 사용하겠다는 library ,자료파일 목록 중 uri목록에 명시되어있는 것들을 사용한다는것 , 
다른사람과 태그 이름이 중복될 수 있기 때문에 prefix라는 것을 사용해 태그 앞에 이름(?)같은 걸 붙여 줌 -->
<!-- 관습상 prefix c 사용 -->
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
<c:set /> <!-- 태그이름 앞에 prefix를 붙여 사용해주어야 함 -->
<%-- <c:remove />
<c:if />
<c:forEach /> --%>

<!-- core태그는 많이 쓰는 태그 -->
</body>
</html>