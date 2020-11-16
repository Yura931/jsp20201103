<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
/* String sql = "SELECT ename FROM employee WHERE eno = " + eno; */
String sql = "SELECT ename FROM employee "
		   + "WHERE eno = ? ";
		   
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
//Statement stmt = con.createStatement();
PreparedStatement stmt = con.prepareStatement(sql);

stmt.setInt(1, Integer.parseInt(eno)); // eno는 위에서 String타입으로 받아짐, parstInt(), valueOf()로 int로 바꾸주자

ResultSet rs = stmt.executeQuery();

String name = "";
if (rs.next()) {
	name = rs.getString(1);
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

이름 : <%= name %>
</body>
</html>