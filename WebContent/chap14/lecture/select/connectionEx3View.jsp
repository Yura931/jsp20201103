<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	//파라미터로부터 얻어오기
	
	String eno = request.getParameter("eno");
	if (eno == null || eno.isEmpty()) {
		eno = "0";
	}
	String sql = "SELECT ename FROM employee WHERE eno = " + eno;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
	
	con = DriverManager.getConnection(url, id, pw);
	
	stmt = con.createStatement();
	
	rs = stmt.executeQuery(sql);
	
	String name = "없음";
	if (rs.next()) { // 없는 사번을 실행하면 resultSet의 커서를 옮길 메소드가 존재하지 않기 때문에 false가 나옴
		name = rs.getString("ename");
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
<h1>
<%= name %>
</h1>
</body>
</html>