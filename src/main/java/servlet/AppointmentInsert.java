package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Appointment;
import services.docDBUtil;


@WebServlet("/AppointmentInsert")
public class AppointmentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String refID = request.getParameter("refID");
		String name = request.getParameter("patientName");
		String gender =request.getParameter("Gender");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("mobileNo");
		String nic = request.getParameter("nic");
		
		
		boolean isTrue;
		
		isTrue = docDBUtil.insertAppointment(refID, name, gender, email, mobileNo, nic);
		
		if (isTrue == true) {
			//DB connection is success
			
            Appointment appointment = new Appointment(refID, name, gender, email, mobileNo, nic);
            
            List<Appointment> appointmentList = new ArrayList<>();
          
            appointmentList.add(appointment);
            
            request.setAttribute("appointmentDetails", appointmentList);

			
			RequestDispatcher dis = request.getRequestDispatcher("successAppointment.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessAppointment.jsp");
			dis2.forward(request, response);			
		}
				
		
	}

}