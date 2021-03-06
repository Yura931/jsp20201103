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

<h2>set으로 scope에 값을 넣고, 그 값을 삭제</h2>
<c:set var="myVar1" value="my value1, page" />
<c:set var="myVar2" value="my value2, request" scope="request" />
<c:set var="myVar1" value="my value1, request" scope="request" />
${myVar1 } <br />
${myVar2 } <br />
${requestScope.myVar1 }
<hr />

<h4>set한 값 지우기</h4>
<%-- <c:remove var="myVar1" /> --%>
${myVar1 } <br />

<%-- <c:remove var="myVar1" /> --%>
<c:remove var="myVar2" scope="request"/> 
${empty myVar2 } <br />

<!-- scope을 지정하지 않으면 모든 영역에서 다 삭제 -->
<c:remove var="myVar1" scope="page" />
${requestScope.myVar1 } <br />
${pageScope.myVar1 } <br />

</body>
</html>