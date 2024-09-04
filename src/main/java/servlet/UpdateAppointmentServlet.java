package servlet;
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.docDBUtil;

@WebServlet("/UpdateAppointmentServlet")
public class UpdateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String refID = request.getParameter("refID");
		String name = request.getParameter("pName");
		String gender = request.getParameter("gender");
		String email= request.getParameter("email");
		String phone = request.getParameter("mobileNo");
		String nic = request.getParameter("nic");
		
		
		boolean isTrue;
		
		isTrue = docDBUtil.updateAppointment(refID, name, gender, email, phone, nic);
		
		if (isTrue == true) {
			//DB connection is success
			
			RequestDispatcher dis = request.getRequestDispatcher("successAppointment.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessAppointment.jsp");
			dis2.forward(request, response);			
		}
			
		
	}

}
