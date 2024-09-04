package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerService;


@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addCustomer() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		customer cus = new customer();
		
	    cus.setName(request.getParameter("name"));
//	    String name = request.getParameter("name");
//	    
//	    System.out.println(name);
	    
	    cus.setPhone(request.getParameter("phone"));
//	    String phone = request.getParameter("phone");
//	    
//	    System.out.println(phone);
//	    
	    cus.setAddress(request.getParameter("address")); // Update to set the address
//	    String address = request.getParameter("address");
//	    
//	    System.out.println(address);
//	    
	    cus.setEmail(request.getParameter("email"));
//	    String email = request.getParameter("email");
//	    
//	    System.out.println(email);
	    
	    cus.setPassword(request.getParameter("password"));
//	    String pwd = request.getParameter("password");
//	    
//	    System.out.println(pwd);
//	    
//	    customerService service = new customerService();
//	    
//	    boolean isSuccess;
//	    
//	    isSuccess = service.regCustomer(name, phone, address, email, pwd);
//	    
//	    if(isSuccess == true)
//	    {
//	    	RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
//		    dispatcher.forward(request, response);
//	    }
//	    
//	    else
//	    {
//	    	RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
//		    dispatcher.forward(request, response);
//	    }
//	    
//	    
		if (cus.getEmail()!= null && !cus.getEmail().isEmpty()&& cus.getName()!= null && !cus.getName().isEmpty()&& cus.getPhone()!= null && !cus.getPhone().isEmpty() && cus.getAddress()!= null && !cus.getAddress().isEmpty() && cus.getPassword()!= null && !cus.getPassword().isEmpty()){
			
		 } else {
		     
		     request.setAttribute("errorMessage", "Email field cannot be empty");
		     request.getRequestDispatcher("regErrorPage.jsp").forward(request,response);
		}
		
		customerService service = new customerService();
		service.regCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		
		dispatcher.forward(request, response);
	}

}