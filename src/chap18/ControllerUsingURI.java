package chap18;

import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ControllerUsingURI
 */
/* @WebServlet("*.do") */
public class ControllerUsingURI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		Properties prop = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile); // 실제 파일시스템 실제경로를 알고싶어 사용한 메소드
		try(FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		} catch(IOException e) {
			throw new ServletException(e);
		} // Properties파일을 만드는 코드, Properties파일은 키와 밸류 쌍으로 되어 있다.
		Iterator keyIter = prop.keySet().iterator();
		while((keyIter).hasNext()) {
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command); // 저장한 키의 value를 불러오는 properties 메소드, handlerClassName변수에 저장
			try {
				Class<?> handlerClass = Class.forName(handlerClassName); // value를 저장한 클래스의 이름을 한 class 생성 handlerClass변수에 저장 
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance(); // handlerClass의 인스턴스 생성
				commandHandlerMap.put(command,  handlerInstance); // 맵에 key인 command와 41,42행을 통해 만들어진 instance를 저장 
			} catch(Exception e) {
				throw new ServletException(e);
			}
		}
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingURI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getRequestURI(); // 요청된 경로에 따라서 handler인스턴스를 얻어낸 것 , 요청된 경로는 request가 알고 있음, 실제 경로인지 확인하는 코드, command key의 경로를 찾는것 , 왜냐하면 경로key에 맞는 value를 찾게 되어있기 때문에!
		if(command.indexOf(request.getContextPath())== 0) {
			command = command.substring(request.getContextPath().length()); // contextpath의 길이 만큼 잘라낸 것 
		}
		CommandHandler handler = commandHandlerMap.get(command); // get메소드를 사용해 key인 command를 가져와 handler변수에 저장, 우리가 만들어 놓은 CommandHandler 인터페이스를 구현한 것,
		/*
		 * if(handler == null) { handler = new NullHandler(); }
		 */
		String viewPage = null;
		try {
			viewPage = handler.process(request,  response); // handler는 CommandHandler인터페이스를 구현 한 것으로, 상속클래스인 HelloHandler에 재정의 된 메소드 process의 일을 하게 됨
		} catch (Throwable e) {	
			throw new ServletException(e);
		} 
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request,  response);
		}
	
	}	
}

























