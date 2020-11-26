package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx05
 */
@WebServlet("/ex05")
public class ServletEx05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id"); // 쿼리스트링을 사용해 get방식으로 요청한 id 꺼내볼 수 있음
		String name = request.getParameter("name");
		System.out.println(id);
		System.out.println(name);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글 사용을 위해 꼭, 항상 명시해 주어야 함
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		
		System.out.println(name);
		System.out.println(age);
		System.out.println(email);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
