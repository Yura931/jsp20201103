package chap19.lecture;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class Filter01
 */
// @WebFilter("/filter/ex1") // 이 경로로 오면 Filter01이 일을 하게 됨, 우리는 /filter/ex1경로로 왔을 때 일을 하길 원함
public class Filter01 implements Filter {

    /**
     * Default constructor. 
     */
    public Filter01() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("필터 예제 필터 01 doFilter 실행");
		// pass the request along the filter chain
		chain.doFilter(request, response); // 이 메소드가 없으면 다음에 줄 서있는 필터가 일을 하지 못함
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
