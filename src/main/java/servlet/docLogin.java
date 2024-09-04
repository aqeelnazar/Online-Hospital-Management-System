package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.doctor;
import services.doctorServices;

@WebServlet("/docLogin")
public class docLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public docLogin() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doctor doc = new doctor();
		doc.setEmail(request.getParameter("email"));
	    

		 if (doc.getEmail()!= null && !doc.getEmail().isEmpty()) {
		     
		 } else {
		     
		     request.setAttribute("errorMessage", "Email field cannot be empty");
		     request.getRequestDispatcher("loginErrorPage.jsp").forward(request,response);
		}
		 
		doc.setPassword(request.getParameter("password"));
		
		doctorServices service = new doctorServices();
		boolean status = service.validate(doc);
		if(status) {
			doctor loginedDoc = service.getOne(doc);
			RequestDispatcher dispatcher = request.getRequestDispatcher("docProfile.jsp");
			request.setAttribute("doctor",loginedDoc);
			dispatcher.forward(request, response);

		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("docLogin.jsp");
			dispatcher.forward(request, response);
	
		}
		
		
	}

}
