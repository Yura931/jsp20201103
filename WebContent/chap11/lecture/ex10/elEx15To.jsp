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
${pageAttr1 } <br />

<hr />

${requestScope["req Attr1"] } <br /> <!-- map안에 있는 키를 사용 하는 형식의 코드 -->
${reqAttr2 } <br />

<hr />

${sesAttr2 } <br />
${sessionScope.reqAttr2 } <br />

<hr />

${applicationScope.reqAttr2 } <br />
${appAttr1 } <br />
${applicationScope["app Attr3"] } <br />
</body>
</html>