<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import = "java.io.IOException, java.io.FileReader" %>
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

<%
	FileReader reader = null;
	try {
		String path = "/chap12/use_out_tag.jsp";
		reader = new FileReader(application.getRealPath(path)); 
		
%>
<pre>
소스 코드 = <%= path %>
<c:out value="<%= reader %>" escapeXml="true" /> <!-- html이 해석한 코드가 아닌 작성된 그대로의 코드, < , > 기호들이 html 엔티티로 &lt; &gt;로 바뀐 것 , escapeXml이 true일 때만 실행하는 태그-->
</pre>		
<%
	} catch(IOException ex) {
%>
에러 : <%= ex.getMessage() %>
<%
	} finally {
		if (reader != null)
			try {
				reader.close();
			} catch(IOException ex) {}
	}
%>
</body>
</html>