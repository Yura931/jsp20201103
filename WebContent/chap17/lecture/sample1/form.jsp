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
<c:if test="${not empty message }">
<div class="alert alert-primary" role="alert">
		${message }
</div>
</c:if>
	<c:remove var="message" scope="session" />
	
	<h1>회원 가입</h1>
	<form action="<%= request.getContextPath() %>/sample1/process" method="post"> <!-- 절대경로 사용 , contextpath 꺼내오기 , 상대경로 사용시 process만 적어주면 됨-->
		id : <input type="text" name="id" value="${formId }" /> <br />
		pw : <input type="text" name="pw" value="${formPw }" /> <br />
		<input type="submit" value="가입" />
	</form>
	<!-- 
	redirect 되었을 경우에는 그대로 남아있고
	SignUp.java,form.jsp를 통해 실행했을 경우에는 남아있지 않도록
	사용한 form id와 pw를 지워주는 작업을 해주면 좋음
	 -->
	<c:remove var="formId" scope="session" />
	<c:remove var="formPw" scope="session" /> 
	
</div>
</body>
</html>