package in.movie;

import java.io.IOException;

import in.movie.Model.User;
import in.movie.Model.UserDao;
import in.movie.Model.UserDaoImp;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String uname=request.getParameter("username");
	String email=request.getParameter("email");
	String pass=request.getParameter("password");
	
	User userObj=new User();
	UserDao obj=new UserDaoImp();
	
	userObj.setUsername(uname);
	userObj.setPassword(pass);
	userObj.setEmail(email);
	
	   if(obj.addUser(userObj))
		{
			response.sendRedirect("Login.jsp?registration=Success");
		}
	   else
		{
			response.sendRedirect("Register.jsp?error=1");
		}
	}

}
