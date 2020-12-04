package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class SubServlet
 */
@WebServlet(name = "SubServlet",
		value = {"/sample3/post/sub"})
public class SubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		Post post = getPost(id);
		
		request.setAttribute("post", post);
		
		String path = "/WEB-INF/view/chap17/sub.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private Post getPost(String id) {
		Post post = new Post();
		String sql = "SELECT title, body " 
				   + "FROM post "; 
				    
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";		
		
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql); // DML = INSERT, UPDATE, DELETE 쿼리를 날릴 때 사용 integer를 리턴, 명령문으로 영향받은 로우를 리턴, 
		
		if (rs.next()) {	
			post.setTitle(rs.getString(1));
			post.setBody(rs.getString(2));		
		}
		
		stmt.close();
		con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return post;
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
