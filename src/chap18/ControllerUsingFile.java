package chap18;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerUsingFile
 */
@WebServlet(value = "/controllerUsingFile", initParams = { @WebInitParam (name="configFile", value="/WEB-INF/commandHandler.properties")}) //configFile이름으로 value 값을 가지고 있는 것
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>(); // 어떤 요청이 오기전에 Map이 완성되어있는것이 좋음. init메소드 사용 
	
	public void init() throws ServletException { // properties파일을 읽어서 맵을 완성하는 코드가 여기에 작성
		String configFile = getInitParameter("configFile"); // 초기화파일 web.xml에 작성할 수 있음, configFile로 읽어낸 것이 파일경로
		Properties prop = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile); // 29행에서 configFile의 파라미터 값을 configFile변수에 담은 후 경로를 구하는 메소드를 사용한 것
		try (FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis); // 파일을 잘 읽어서 로딩시킨 것
		} catch(IOException e) {
			throw new ServletException(e);
		} 
		Iterator keyIter = prop.keySet().iterator(); // 프로퍼티즈를 탐색
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();
			String handlerClassName = prop.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command,  handlerInstance); //commandHandlerMap에 put한 것 while문이 돌면서 완성 됨
			} catch(ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response); // process라는 메소드가 열심히 일을 하게 되는 것
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("cmd"); //cmd 파라미터를 받아서
		CommandHandler handler = commandHandlerMap.get(command); // 실제일을 하게되는 클래스 Map에 있는것을 꺼내어 handler가 일을 하게 되는 것
		/*
		 * if(handler == null) { handler = new NullHandler(); }
		 */
		String viewPage = null;
		try {
			viewPage = handler.process(request, response); // 어떤일을 하게 될 process를 viewPage에 담아 사용,   
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request,  response);
		}
	}
}










