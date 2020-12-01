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
 * Servlet Filter implementation class Filter03ReqEncoding
 */
// @WebFilter("/Filter03ReqEncoding")
public class Filter03ReqEncoding implements Filter {

    /**
     * Default constructor. 
     */
    public Filter03ReqEncoding() {
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
		request.setCharacterEncoding("utf-8"); // 모든 서블릿이 일하기 이전에 실행되게 할 것
		// pass the request along the filter chain
		chain.doFilter(request, response); 
		
		// 리퀘스트에 접근할 수 있음. 파라미터로 request와 response를 가지고 있기 때문
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
