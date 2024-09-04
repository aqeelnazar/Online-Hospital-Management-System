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

@WebServlet("/addDoctor")
public class addDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addDoctor() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doctor doc = new doctor();
		doc.setName(request.getParameter("name"));
		doc.setPhone(request.getParameter("phone"));
		doc.setSpecialization(request.getParameter("specialization"));
		doc.setAvailableDate(request.getParameter("availableDate"));
		doc.setRoomNo(request.getParameter("roomNo"));
		doc.setEmail(request.getParameter("email"));
		doc.setPassword(request.getParameter("password"));
		
		if (doc.getEmail()!= null && !doc.getEmail().isEmpty()&& doc.getName()!= null && !doc.getName().isEmpty()&& doc.getPhone()!= null && !doc.getPhone().isEmpty() && doc.getSpecialization()!= null && !doc.getSpecialization().isEmpty() && doc.getAvailableDate()!= null && !doc.getAvailableDate().isEmpty() && doc.getAvailableDate()!= null && !doc.getAvailableDate().isEmpty() && doc.getRoomNo()!= null && !doc.getRoomNo().isEmpty() && doc.getPassword()!= null && !doc.getPassword().isEmpty()){
			
		 } else {
		     
		     request.setAttribute("errorMessage", "Email field cannot be empty");
		     request.getRequestDispatcher("regErrorPage.jsp").forward(request,response);
		}
		
		doctorServices service = new doctorServices();
		service.regDoctor(doc);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("docPortal.jsp");
		
		dispatcher.forward(request, response);
	}

}
