package chap19.lecture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet03
 */
@WebServlet("/filter/ex3")
public class Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.setCharacterEncoding("utf-8"); // post방식으로 요청을 보낼 때 한글을 잘 받고 싶다면 utf-8인코딩을 해 주어야 함, 대부분의 서블릿에 이 statement를 항상 넣어주어야 함
		String name = request.getParameter("name");
		System.out.println(name); 
		// 요청에 대해서 일을 할 수 있다
		// name 출력만 해보자 /filter/ex3으로 요청을 보내게 되면 doGet메소드가 일하게 됨
		// doFilter 와일드 카드 사용으로 항상 실행되고
		// name파라미터 값은 null이 나옴
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
