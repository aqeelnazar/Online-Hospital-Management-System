package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.docDBUtil;


@WebServlet("/DeleteAppointmentServlet")
public class DeleteAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String refID = request.getParameter("refID");
		boolean isTrue;
		
		isTrue = docDBUtil.deleteAppointment(refID);
		
		if (isTrue == true) {
			//DB connection is success
			
			RequestDispatcher dis = request.getRequestDispatcher("DoctorAppointment.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessAppointment.jsp");
			dis2.forward(request, response);			
		}
			
		
		}
		
	}


