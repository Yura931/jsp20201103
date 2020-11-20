<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("el");
list.add("css");

pageContext.setAttribute("alist", list);
%>
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
${alist[0] } <br />
<hr />
<%
for (int i = 0; i < list.size(); i++) {
	pageContext.setAttribute("cnt", i); /* page영역에 i라는 변수를 저장해야 표현언어에서 사용할 수 있음 */
%>
	${alist[cnt] } <br /> <!-- 탐색되지 않음 el안에 작성되는 변수는 page영역부터 찾음, page에 i라는 변수가 없었음,-->
<%	
} 
%>
</body>
</html>










