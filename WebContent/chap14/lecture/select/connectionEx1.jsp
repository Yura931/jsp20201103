<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String sql = "SELECT ename FROM employee WHERE eno = 7499";
	// 쿼리를 날릴 때 마다 실행되는 일 , 우리는 4 - 5번만 필요하지만 전체를 다 거쳐야 함 -> 코드 지저분 ..
	// 1. jdbc 드라이버 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver"); // 383p  오라클에서 사용한다는것 , 필요한 코드들이 실행 됨
	
	// 2. 데이터베이스 커넥션 구함
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	/* java.sql 패키지에 있는 DriverManager클래스에 있는 getConnection(); static 메소드를 통해 꺼내 올 수 있음 */

	String url = "jdbc:oracle:thin:@localhost:1521:orcl"; //다른 컴퓨터 사용시 localhost를 ip주소로 변경	
	String id = "c##mydbms";
	String pw = "admin";
	
	con = DriverManager.getConnection(url, id, pw); 
	/* 데이터베이스의 위치, 유저아이디, pw를 파라미터로 주어 연결 , 파라미터 값만 잘 채워주면 됨 url - DBS마다 형태가 다름*/
	
	// 3. 쿼리 실행을 위한 statement 객체 생성 - 쿼리를 날릴려면 statement객체가 있어야 함 , connection객체에서 얻어올 수 있음, 쿼리를 실행하는 메소드를 가지고 있음
	stmt = con.createStatement();
	
	// 4. 쿼리 실행
	rs = stmt.executeQuery(sql); // executeQuery 사용을 위해 ResultSet에 넣어주어야 함
	
	// 5. 쿼리 실행 결과 사용 // 결과를 얻어놓는 곳
	String name = "";
	if (rs.next()) { //next()메소드가 실행되면 그때야 첫번째를 가리키게 됨 , boolean 타입을 리턴 next()메소드가 움직였을때 가리키는 메소드가 있으면 true 없으면 false 
		name = rs.getString("ename"); // getString("컬럼명"), 밑에서 사용하기위해 다시 변수에 담아줌
	}	
	// 6. Statement 종료
	stmt.close(); // 실제로 이렇게 간단하지 않음
	// 7. 데이터베이스 커넥션 종료
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
<h1>성공</h1>
<h1><%= name %></h1>
</body>
</html>