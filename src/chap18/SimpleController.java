package chap18;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleController
 */
@WebServlet("/simple")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	
	}
	 
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2단계, 요청 파악
		// request 객체로부터 사용자의 요청을 파악하는 코드
		String type = request.getParameter("type");
		
		// 3단계, 요청한 기능을 수행한다.
		// 사용자에 요청에 따라 알맞은 코드
		Object resultObject = null;
		if(type == null || type.equals("greeting")) {
			resultObject = "안녕하세요";
		} else if(type.contentEquals("date")) {
			resultObject = new java.util.Date();
		} else {
			resultObject = "Invalid Type";
		}
	
		// 4단계, request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);
		
		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
