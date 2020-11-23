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
<h2>값의 영역 Scope Attribute</h2>
<!-- scope의 기본값은 page 넣고싶은 영역 scope 어트리뷰트에 지정 -->
<c:set var="myvar1" value="my value1" scope="page"></c:set> 
<c:set var="myvar2" value="my value1, page" scope="page"></c:set> 
<c:set var="myvar2" value="my value2, request" scope="request"></c:set>



${myvar1 } <br />
${myvar2 } <br />
${requestScope.myvar2 } <br /> <!-- 같은 이름을 가진 어트리뷰트 값 출력시 저장되어있는 scope객체 사용 -->
</body>
</html>