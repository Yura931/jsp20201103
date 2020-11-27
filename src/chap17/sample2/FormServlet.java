package chap17.sample2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/sample2/form")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private List<Post> list; // db를 사용하지 못하고 있기 때문에 임시로 instance필드를 사용 함, 좋은방법은 아님 
		
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext(); // db처럼 사용하기 위해 application 꺼내 옴
    	Object obj = application.getAttribute("posts");	//40행에 application에 저장된 list("posts")를 꺼내 Object타입의 obj에 넣어준 것
    	 
    	if(obj == null) {  // 리스트에 아무것도 없을 때 새 ArrayList를 추가해주는 코드
    		list = new ArrayList<>();
    		application.setAttribute("posts", list); // application에 저장해 놓았기 때문에 이 application과 관련된 모든 영역에서 이 posts를 사용 할 수 있다./ 70행에 Post객체를 담은 list
    	} else {
    		list = (List<Post>) obj; // list가 있으면 List<Post>인 obj그대로 작성
    	} // 가짜 db
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* form이 완성된 jsp */
		String path = "/chap17/lecture/sample2/form.jsp";
		 // RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		 // dispatcher.forward(request, response); 37행처럼 한줄로 작성 가능
		request.getRequestDispatcher(path).forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title"); 
		String body = request.getParameter("body");
		if(title != null && body != null && !title.isEmpty() && !body.isEmpty()) { //매개 파라미터 타이틀 파라미터에 내용이 비어있지 않고 잘 작성되어 있다면
			// 잘 작성되었으면
			// db 저장 (임시로 application에 저장)
			Post post = new Post(); // post타입의 객체를 만들어 post내부 메소드인 setTitle과 setBody에 파라미터 title과 body를 저장
			post.setTitle(title);
			post.setBody(body);			
			list.add(post); // title과 body가 저장된 post를 list에 담아준다.
			
			// 목록을 보여주는 servlet으로 redirect
			response.sendRedirect(request.getContextPath() + "/sample2/list"); // 경로로 redirect
			
		} else {
			// 잘 작성되지 않았으면
			// 여전히 폼에 머무르게 됨 , form.jsp로 forward 됨
			doGet(request, response); 
		}
	}

}
