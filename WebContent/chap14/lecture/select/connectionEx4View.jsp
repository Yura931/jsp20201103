<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	//파라미터로부터 얻어오기
	
	String dno = request.getParameter("dno");
	if (dno == null || dno.isEmpty()) {
		dno = "0"; // getParameter가 값이 없으면 null이 저장되서 오류가 생기니까!!! 이 바보양!
	}
	String sql = "SELECT loc FROM department WHERE dno = " + dno; // 변경된 값, 고정된 값을 받아올 수 없기 때문에 입력된 값을 넣어준다.
	
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
	
	String location = "없음"; // 숫자를 입력했는데 
	if (rs.next()) { // 없는 지역을 실행하면 resultSet의 커서를 옮길 메소드가 존재하지 않기 때문에 false가 나옴
		location = rs.getString("loc");
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
<%= location %>
</h1>
</body>
</html>
