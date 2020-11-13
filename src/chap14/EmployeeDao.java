package chap14;

import java.util.ArrayList;

import java.util.List;
import java.sql.*;
import java.sql.Connection;

public class EmployeeDao {
	
	public static List<String> getNameList(String name, boolean asc) {
		List<String> list = new ArrayList<>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		String sql = "SELECT ename "
					+ "FROM employee "
					+ "WHERE ename LIKE '%" + name + "%' "
					+ "ORDER BY ename ";
		if (asc) {
			sql += "ASC";
		} else {
			sql += "DESC";
		}
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver"); // forName은 Exception 처리 해줘야하는 메소드

			// 2. 커넥션 생성

			conn = DriverManager.getConnection(url, user, password);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while (rs.next()) { 
				list.add(rs.getString("ename")); 
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 7. connection 닫고
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;

	}
						
	public static List<String> getNameLike(String name) { // 리스트 스트링을 리턴하기로 약속
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%'"; // 식이 길어졌을 시 where절 안에서 연산식별로 단을 나눠주자
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver"); // forName은 Exception 처리 해줘야하는 메소드

			// 2. 커넥션 생성

			conn = DriverManager.getConnection(url, user, password);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while (rs.next()) { 
				list.add(rs.getString("ename")); 
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 7. connection 닫고
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;

	}
	
	

	public static List<String> listEmployeeName() { // 클래스 이름으로 바로 접근 static 사용

		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";

		String sql = "SELECT ename FROM employee"; // 모든 사원명을 추출할 것이기 때문에 WHERE은 필요 없음

		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver"); // forName은 Exception 처리 해줘야하는 메소드

			// 2. 커넥션 생성

			conn = DriverManager.getConnection(url, user, password);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while (rs.next()) { // 레코드가 하나일 때는 if문을 사용해서 있는지 없는지 확인만 하면 되었었음
				list.add(rs.getString("ename")); // 우리가 지금 찾으려는건 모든 로우 이기때문에 if문 보다는 while문으로 사용하는게 좋음
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. statment 닫고 close는 항상 처리해야하기 때문에 Execption 처리 해주면 안됨 finally 블록에서 작성
			// finally에서도 try catch 해 주어야 함
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 7. connection 닫고
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;

	}
}
