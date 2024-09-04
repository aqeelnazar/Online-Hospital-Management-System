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


@WebServlet("/updateDoctor")
public class updateDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public updateDoctor() {
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
		
		doctorServices service = new doctorServices();
		service.updateDoctor(doc);
		RequestDispatcher dispatcher = request.getRequestDispatcher("singleDataButton");
		
		dispatcher.forward(request, response);
	}

}
