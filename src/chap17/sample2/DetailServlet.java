package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample2/detaile")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Post> list;    // Post타입 List 선언
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext(); // application에 저장해둔 list를 사용하기 위해 application 꺼내옴
    	list = (List<Post>) application.getAttribute("posts"); // list를 저장한 posts를 application.getAttribute에 담아주고 list에 저장
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// list에서 idx에 해당하는 post를 꺼내서
		// request에 attribute로 담아서
		// detaile.jsp에 forward
		
		String idx = request.getParameter("idx"); // list.jsp에서 쿼리스트링으로 저장해둔 파라미터 idx 저장
		
		Post post = list.get(Integer.parseInt(idx)); // idx를 Int로 자동 변환 시켜주는 메소드를 사용하고 list에 저장 후 Post타입 변수에 담아줌
		request.setAttribute("post", post ); // post request영역에 저장
		
		String path = "/chap17/lecture/sample2/detaile.jsp";
		request.getRequestDispatcher(path).forward(request, response); // 리스트 인덱스와 포스트를 잘 저장해서 경로로 forward
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
