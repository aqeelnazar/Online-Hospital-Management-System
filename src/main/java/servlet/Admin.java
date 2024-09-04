package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Appointment;
import model.customer;
import model.doctor;
import services.doctorServices;

@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Admin() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doctorServices service = new doctorServices();
		ArrayList<doctor> doctor = service.getAllDoctor();
		request.setAttribute("doctor", doctor);
		
		doctorServices service1 = new doctorServices();
		ArrayList<customer> customer = service1.getAllCustomer();
		request.setAttribute("customer", customer);
		
		doctorServices service2 = new doctorServices();
        ArrayList<Appointment> appointmentDetails = service2.viewAppointment();
        request.setAttribute("appointmentDetails", appointmentDetails);

		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTable.jsp");
		dispatcher.forward(request, response);
	}

}
