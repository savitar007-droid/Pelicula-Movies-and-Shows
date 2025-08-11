package in.movie;

import java.io.IOException;

import in.movie.Model.UserDao;
import in.movie.Model.UserDaoImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String uname= request.getParameter("username");
	String pass=request.getParameter("password");
	HttpSession session=request.getSession();
	UserDao obj=new UserDaoImp();
	
	if(obj.isValidUser(uname, pass))
	{
		session.setAttribute("username", uname);
		response.sendRedirect("Welcome.jsp");
	}
	else
	{
		response.sendRedirect("Login.jsp?error=1");
	}
		
	}


}
