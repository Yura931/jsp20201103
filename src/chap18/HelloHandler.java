package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setAttribute("hello", "안녕하세요!");  // setAttribute를 사용한 4단계와
		return "/WEB-INF/view/chap18/hello.jsp"; // 어떤 jsp 파일로 보여줄 것인지 forward까지 보여준 것
	}

}
