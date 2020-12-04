package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/sample3/post/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 필터로 servlet 실행전 무조건 실행하도록 빼도 됨
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if (title != null && body != null 
				&& !title.isEmpty() && !body.isEmpty()) {
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			int row = insert(post);
			
			if  (row == 1) {
				System.out.println("insert 성공~");
			} else {
				System.out.println("insert 오류....");
				
			}
		}
		
		response.sendRedirect("main");
	}
	
	private int insert(Post post) {
		String sql = "INSERT INTO post " // post테이블 id라는 컬럼, 자동 제너레이터 됨
				   + "(title, body) " // id는 자동으로 들어가게 됨
				   + "VALUES (?, ?)";
				    
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		int row = 0;
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, post.getTitle());
		pstmt.setString(2, post.getBody());
		row  = pstmt.executeUpdate(); // DML = INSERT, UPDATE, DELETE 쿼리를 날릴 때 사용 integer를 리턴, 명령문으로 영향받은 로우를 리턴, 
	
		
		pstmt.close();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
		return row;
	}
}
