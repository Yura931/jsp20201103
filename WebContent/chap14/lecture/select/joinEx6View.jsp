<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String managereno = request.getParameter("managereno");
String sql = "SELECT e1.ename "
		   + "FROM employee e1, employee e2 "
		   + "WHERE e1.manager = e2.eno "
		   + "AND e2.eno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";



Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
stmt.setInt(1,Integer.valueOf(managereno));

ResultSet rs = stmt.executeQuery();

List<String> list = new ArrayList<>();
String ename = "";
while (rs.next()) {
	ename = rs.getString(1);
	list.add(ename);
}

stmt.close();
con.close();
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

<%= managereno %> MANAGER가 관리하는 사원들
<ul>
<%
for (String name : list) {
%>
	<li><%= name %></li>
<%
}
%>
</ul>
</body>
</html>