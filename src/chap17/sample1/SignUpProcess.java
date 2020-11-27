package chap17.sample1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpProcess
 */
@WebServlet("/sample1/process")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpProcess() {
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
		/* form에서 post방식으로 보내주었기 때문에 doPost메소드가 일 함 */
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 가입정보 유효하면 가입 처리 (id와 pw가 다르면)	
		if (id != null && pw != null && !id.equals(pw)) {
			// 가입처리하고 완료페이지 보여주고 (forward)
			request.setAttribute("userId", id);
			String path = "/chap17/lecture/sample1/done.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);				
			} else {
		// 유효하지 않으면 
		// form으로 redirect 시킴
			/* 적어둔 아이디와 패스워드가 리다이렉트 될 때 정보가 남아있길 원함 */
			// session에 저장해서 form에 넣어줌
			HttpSession session = request.getSession();
			session.setAttribute("formId", id);
			session.setAttribute("formPw", pw);
			session.setAttribute("message", "아이디와 패스워드가 일치합니다.");
			
			String path = request.getContextPath() + "/sample1/signup";
			response.sendRedirect(path);
			
			
			} 	
			
	}

}
