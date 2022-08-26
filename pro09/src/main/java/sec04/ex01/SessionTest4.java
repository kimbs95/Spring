package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionTest4
 */
@WebServlet("/sess14")
public class SessionTest4 extends HttpServlet {

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionTest4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	private void doHandle(HttpServletRequest request , HttpServletResponse response) throws ServletException ,IOException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session =request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
//		System.out.println(user_id);
		System.out.println(user_id);
		if(session.isNew()) {
			if(user_id!=null) {
				session.setAttribute("user_id", user_id);
				out.println("<a href = 'login2.html'>로그인 상태 확인 </a>");
			}else {
				out.print("<a href='login2.html'> 다시로그인 하세요 </a>");
				session.invalidate();
			}
		}else {
			user_id = (String) session.getAttribute("user_id");
			if(user_id !=null && user_id.length() !=0) {
				out.print("안녕하세요 " + user_id+"님!!" );
				
			}else {
				out.print("<a href ='login2.html'>다시 로그인 하세요 !!</a>");
				session.invalidate();
			}
		}

	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request , response);
	}

}
