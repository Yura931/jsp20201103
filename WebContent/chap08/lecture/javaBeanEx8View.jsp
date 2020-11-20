<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="car" class="chap08.Car" />

<!-- param = "name" == request.getParameter("name") -->

<%-- <jsp:setProperty name="car" property="name" param="name" />
<jsp:setProperty name="car" property="speed" param="speed" />   --%>  

<%-- <jsp:setProperty name="car" property="name" />
<jsp:setProperty name="car" property="speed" />    
 --%>
 
<jsp:setProperty name="car" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty property="name"  name="car" /> <br />
<jsp:getProperty property="speed" name="car" /> <br />
</body>
</html>