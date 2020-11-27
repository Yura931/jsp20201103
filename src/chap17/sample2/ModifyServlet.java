package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class ModifyServlet
 */
@WebServlet("/sample2/modify")
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Post> list;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override   
    public void init() throws ServletException {
    	this.list = (List<Post>) getServletContext().getAttribute("posts");
    	super.init();
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
		/* 제목과 내용 수정을위해 title과 body를 파라미터로 받아오고, 인덱스번호를 알 수 있는 idx도 가져옴 */
		String idx = request.getParameter("idx");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		Post post = new Post(); //수정된 포스트를 만들기 위해 새로 객체 생성
		post.setTitle(title);	// 수정된 title, body 저장
		post.setBody(body);
		
		list.set(Integer.parseInt(idx), post); // list 인덱스 변경해주는 메소드 set , idx인덱스를 가진 list의 내용을 새로 저장한 title과 body로 바꿔준다.
		
		response.sendRedirect(request.getContextPath() + "/sample2/detaile?idx=" + idx); // 변경된 내용 redirect해주기 
	}

}
