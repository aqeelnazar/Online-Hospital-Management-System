package net.javaguides.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.javaguides.dao.LoginDAO;
import net.javaguides.model.Login;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private LoginDAO loginDAO;

	public void init() 
	{
		loginDAO = new LoginDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
        // Forward the request to dashboard.jsp
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		    

		 if (password != null && !password.isEmpty() && username != null && !username.isEmpty()) {
		     
		 } else {
		     
		     request.setAttribute("errorMessage", "Email field cannot be empty");
		     request.getRequestDispatcher("adminErrorPage.jsp").forward(request,response);
		}
		
		
		Login loginBean = new Login();
		
		loginBean.setUsername(username);
		loginBean.setPassword(password);

		try 
		{
			if (loginDAO.validate(loginBean)) 
			{	
				RequestDispatcher dis = request.getRequestDispatcher("supplier.jsp");
				dis.forward(request, response);
			} 
			
			else 
			{
				 response.sendRedirect("login_haritha.jsp");
			}
		} 
		
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
	}
}