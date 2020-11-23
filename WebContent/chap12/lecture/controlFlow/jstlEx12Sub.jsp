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
<c:if test="${dark }"> <!-- jstlExView에서 not empty param.dark 를 저장한 dark변수를 사용해 session에 남아있는 코드를 그대로 재 사용 한 것 --> 
	<div style="background-color: black; color: white;">
	sub.jsp
	</div> 
</c:if>
<c:if test="${pink }" > <!-- jstlExView에서 not dark를 저장한 pink변수를 사용! -->
	<div style ="background-color: pink; color: yellow;">
	sub.jsp
	</div>
</c:if>	
</body>
</html>