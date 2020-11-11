<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 제목과 본문을 같이 가지고 있는 인스턴스가 있다고 생각하고 만들자 -->
<%
List<Post> list = (List<Post>)application.getAttribute("list"); // List를 application객체로 인스터스를 담는 인스턴스 생성
if (list == null) { // null일 때만 새로운 리스트에; 
	list = new ArrayList<Post>();
	application.setAttribute("list", list);
}

String title = request.getParameter("title"); /* 자동으로 null이 들어감 */
String body = request.getParameter("body");

if (title != null && !title.isEmpty() 
	&& body != null && !body.isEmpty()) {
Post p = new Post(); /* 파라미터로 만든 값을 포스트로 보내서 리스트에 추가 */
p.setTitle(title);
p.setBody(body);

list.add(p); // application 객체로 만들어줘야 모든 jsp파일에서 꺼내볼 수 있음

}
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
<h1>방명록</h1>
<form action="" method="post">
	제목 : <input type="text" name="title" /> <br />
	<textarea name="body" cols="30" rows="10"></textarea>
	<br />
	<input type="submit" value="등록" />
</form>
<hr />
<ul>
<%
for (int i = 0; i < list.size(); i++ ) {
%>
	<li><a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %></a></li>
<%
}
%>

</ul>
</body>
</html>