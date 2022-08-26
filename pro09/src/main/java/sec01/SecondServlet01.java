package sec01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecondServlet01
 */
@WebServlet("/second01")
public class SecondServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecondServlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("second init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String User_id = request.getParameter("user_id");
		String User_pw = request.getParameter("user_pw");
		String User_address =request.getParameter("user_address");
		System.out.println(User_id);
		out.println("<html><body>");
		if(User_id!=null && User_id.length()!=0) {
			out.println("이미 로그인 상태입니다!<br><br>");
			out.println("첫 번째 서블릿에서 넘겨준 아이디"+User_id +"<br>");
			out.println("첫 번째 서블릿에서 넘겨준 비밀번호"+User_pw +"<br>");
			out.println("첫 번째 서블릿에서 넘겨준 주소"+User_address +"<br>");
			out.println("</body></html>");
		}else {
			out.println("로그인하지 않았습니다. <br><br>");
			out.println("다시 로그인하세요!!<br>");
			out.println("<a href='/pro09/login.html'>로그인창으로 이동하기 </>");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
