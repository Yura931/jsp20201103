package chap20.lecture;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex1ServletContextListener
 *
 */
@WebListener // 어노테이션, 어떤 인터페이스를 구현했는지 보고 톰캣이 판단 함, 어떤 리스너를 선택했는지!
public class Ex1ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex1ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         System.out.println("우리 앱이 종료되었습니다.");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("우리 앱이 실행되었습니다.");
         try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
	
}
