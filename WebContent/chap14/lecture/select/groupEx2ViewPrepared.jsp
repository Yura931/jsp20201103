<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String job = request.getParameter("job");
String sql = "SELECT max(salary), min(salary)" 
		   + ", avg(salary), sum(salary) "
	       + "FROM employee "
	       + "WHERE job = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql); // sql을 먼저 넣어주어야 함 커넥션으로부터 얻을 때 이미 sql완성

pstmt.setString(1, job); // 몇번째 파라미터에 어떤 값을 넣을 것인지

ResultSet rs = pstmt.executeQuery();

int max = 0;
int min = 0;
Double avg = 0.0;
int sum = 0;

if (rs.next()) {
	max = rs.getInt(1);
	min = rs.getInt(2);
	avg = rs.getDouble(3);
	sum = rs.getInt(4);
}

pstmt.close();
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
<h1>max : <%= max %></h1>
<h1>min : <%= min %></h1>
<h1>avg : <%= avg %></h1>
<h1>sum : <%= sum %></h1>
</body>
</html>