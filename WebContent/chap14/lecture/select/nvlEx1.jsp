<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT ename, salary * 12 + NVL(commission, 0) AS sal "
			 + "FROM employee"
			 + "WHERE eno = 7499";

Connection con = null;
Statement stmt = null;
ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
con = DriverManager.getConnection(url, id, pw);

stmt = con.createStatement();

rs = stmt.executeQuery(sql);

String ename = "";
int sal = 0;

if(rs.next()) {
ename = rs.getString("ename");
sal = rs.getInt("sal");
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
<h1>이름 : <%= ename %></h1>
<h1>연봉 : <%= sal %></h1>
</body>
</html>