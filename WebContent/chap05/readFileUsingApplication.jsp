<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.io.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>기본 객체 사용하여 자원 읽기</title>
</head>
<body>

<%
	String resourcePath = "/WEB-INF/notice.txt";
%>
자원의 실제 경로: <br />
<%= application.getRealPath(resourcePath) %> 실제경로 얻어내기
<%
/* String realPath = application.getRealPath(resourcePath); /* 경로를 알아내는 주된 이유가 inputstream , outputstream을 이용해 읽고 싶은 것  getResourceAsstream 실제경로에 있는 자원의 위치를 알기 위해 */
// InputStream st = new InputStream(realPath); 
%>
<br />
------------- <br />
<%= resourcePath %>의 내용 <br />
------------- <br />
<%
	char[] buff = new char[128];
	int len = -1;
	
	try(InputStreamReader br = new InputStreamReader ( /* 문자로 읽고싶어서 reader로 한번 감싼 것 */
			application.getResourceAsStream(resourcePath), "UTF-8")){ 
		while ((len = br.read(buff)) != -1) {
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("익셉션 발생: " + ex.getMessage());
	}
				
%>

</body>
</html>
















