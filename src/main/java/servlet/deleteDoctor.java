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

@WebServlet("/deleteDoctor")
public class deleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteDoctor() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doctor cus = new doctor();
		cus.setEmail(request.getParameter("email"));
		// if the PK is int cus.setAge(Integer.parseInt(request.getParameter("age")));
		
		doctorServices service = new doctorServices();
		service.deleteDoctor(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home1.jsp");
		dispatcher.forward(request, response);
	}

}
