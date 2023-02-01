package Login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public signup() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		SignupDAO signdao = new SignupDAO();
		
		String id = (String)request.getParameter("id");
		String pw = (String)request.getParameter("pw");
		String name = (String)request.getParameter("u_name");
		
		int result = signdao.signup(id, pw, name);
		
		if(result == 1) {
			out.print("<script>alert('가입되었습니다. 로그인 해주세요.'); location.href='login.jsp'; </script> ");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
