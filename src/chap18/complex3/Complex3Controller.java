package chap18.complex3;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap18.complex2.Model1;
import chap18.complex2.Model2;
import chap18.complex2.ModelInterface;

/**
 * Servlet implementation class Complex3Controller
 */
@WebServlet("/Complex3Controller")
public class Complex3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		ModelInterface model = null;
	
		
		String path = "/WEB-INF/mapping/mapping.properties";
		path = getServletContext().getRealPath(path);
		FileReader fr = null;
		String modelClassName = "chap18.complex2.Model1";
		try {
		fr = new FileReader(path);
		Properties properties = new Properties(); // properties파일을 map으로 만들어주는 클래스, map인터페이스를 구현함
		properties.load(fr); // 적절한 스트림을 넣어 경로 설정
		modelClassName = properties.getProperty(type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {			
		Class c = Class.forName(modelClassName); //클래스 정보에 해당하는 이름을 얻어와서
		model = (ModelInterface) c.newInstance(); // 클래스 정보가 있으면 인스턴스를 만들 수 있음. 그 클래스의 인스턴스를 만들어서 , ModelInterface를 구현한 놈들이기 때문에 형변환으로
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		resultObject = model.execute();
		// 4단계, request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);
		
		// 5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
