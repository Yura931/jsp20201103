<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 모든 직원의 연봉을 출력하는 jsp를 만들어보자 -->
<%
class Emp {
	private String ename;
	private int sal;
	
	public void setEname(String ename) {
		this.ename = ename;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public String getEname() {
		return this.ename;
	}
	public int getSal() {
		return this.sal;
	}
}

List<Emp> list = new ArrayList<>();
String sql = "SELECT ename, salary * 12+NVL(commission,0) "
			+"FROM employee";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String password = "admin";

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

// 2. 연결
// 3. statment
try ( Connection conn = DriverManager.getConnection(url, user, password);
	  Statement stmt = conn.createStatement();
		) {
	// 4. 쿼리
	ResultSet rs = stmt.executeQuery(sql);
	// 5. 처리
	
	String ename = "";
	int sal = 0;
	while (rs.next()) {
		Emp emp = new Emp();
		emp.setEname(rs.getString(1));
		emp.setSal(rs.getInt(2));
		list.add(emp);
	}
} catch (Exception e) {
	e.printStackTrace();
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
<h1>이름 / 연봉</h1>
<ul>
<%
for (Emp e : list) {
%>
	<li><%= e.getEname() %> : <%= e.getSal() %></li>	
<%	
}
%>
</ul>


</body>
</html>