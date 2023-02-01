package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		LoginDAO logindao = new LoginDAO();
		
		String id = (String)request.getParameter("id");
		String pw = (String)request.getParameter("pw");
		
		LoginVO vo = logindao.login(id, pw);
		
		//request.setAttribute("id", vo.getId());
		//request.setAttribute("name", vo.getName());
		//request.setAttribute("point", vo.getPoint());
		
		HttpSession session = request.getSession();
	    session.setAttribute("id",vo.getId());
	    session.setAttribute("name", vo.getName());
	    session.setAttribute("point", vo.getPoint());

		
		if(vo.getId() == null) {
			out.print("<script>alert('아이디/비밀번호를 다시 확인하세요'); location.href='login.jsp'; </script> ");
		}else if(vo.getId().equals("admin")){
			MemberDAO memdao = new MemberDAO();
			
			ArrayList<LoginVO> memlist = new ArrayList<LoginVO>();
			memlist = memdao.member();
			request.setAttribute("memlist", memlist);
			response.sendRedirect("member_management.jsp");
		}else {
			response.sendRedirect("main.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
