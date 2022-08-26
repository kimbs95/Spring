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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login1")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("dsetory 메서드 호출");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter  out =response.getWriter();
		String User_id = request.getParameter("user_id");
		String User_pw = request.getParameter("user_pw");
		String User_address = request.getParameter("user_address");
		String User_email =request.getParameter("user_email");
		String User_hp = request.getParameter("user_hp");
	
		String data = "<html><body>";
		data += "안녕하세요! <br> 로그인하셨습니다<br><br><br>";
		data += "아이디: "+User_id;
		data += "<br>";
		data += "패스워드: "+User_pw;
		data += "<br>";
		data += "주소: "+User_address;
		data += "<br>";
		data += "email: "+User_email;
		data += "<br>";
		data += "휴대전화: "+User_hp;
		data += "<br>";
		data += "</body></html>";
		
		out.print(data);
	}

}
