package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TransactionEx1Servlet
 */
@WebServlet("/sample/transaction1")
public class TransactionEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = getConnection();
		// 어디선가 커넥션을 꺼내와서 두 메소드가 같은 커넥션을 쓰도록 해야한다. 
				// 문제가 없을 경우에만 커넥션을 커밋 해주어야함 , 커넥션의 커밋은 자동으로 실행되었음
		try {
			con.setAutoCommit(false); // 자동으로 실행되던 커밋을 수동조절하기위해 false로 설정 		
			// 1. ironman의 잔고(50 빼고)	
			update1(con);
			// 2. captain의 잔고(50 더하고)
			update2(con);
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();		
			if (con != null) {
				try {
					con.rollback(); 
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (con != null) {
				try {
					con.close(); // 커넥션은 리소스를 연 곳에서 닫아주어야 함
				} catch (SQLException e) {
				e.printStackTrace();
				}
			}
		}
	}
	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		Connection con = null;
		
		try { 
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	
	private void update2(Connection con) {
		String sql = "UPDATE bank "
				   + "SET money=(money+50) "
				   + "WHERE name='captain'"; // 쿼리를 잘 못 작성했을 경우, 문제가 생겼다면 rollback이 되도록 
				    
	try {
		Statement stmt = con.createStatement();		
		int row = stmt.executeUpdate(sql);		// sql 실행중 오류가 난것, executeUpdate를 실행할 때, int를 리턴, 이 int는 영향을 미친 레코드의 개수, 로우의 개수 뜻함 
		
		if (row == 0) { // sql문이 실행되었을 때 영향을 미친 row의 수가 0이면 if문이 실행되어 con.rollback을 실행하게 됨
			con.rollback(); // 실패했다고 판단하는 순간 rollback을 해주면 된다.
		}
		stmt.close();	
	} catch (Exception e) {
		try {
			con.rollback(); // sql 오류가 났을 시 롤백
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		e.printStackTrace();
	}
	
	}
	private void update1(Connection con) {
		// 1. jdbc...
		String sql = "UPDATE bank "
				   + "SET money=(money-50) "
				   + "WHERE name='ironman'";				   		
		try {	
		
		Statement stmt = con.createStatement();	
		int row = stmt.executeUpdate(sql);
		
		if (row == 0) {
			con.rollback();
		}
		stmt.close();
	} catch (Exception e) {
		try {
			con.rollback();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		e.printStackTrace();
	}
	
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
