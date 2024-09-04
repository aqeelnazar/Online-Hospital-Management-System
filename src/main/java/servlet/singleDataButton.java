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

@WebServlet("/singleDataButton")
public class singleDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public singleDataButton() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doctor doc = new doctor();
		doc.setEmail(request.getParameter("email"));
		doctorServices service = new doctorServices();
		doctor doctor = service.singleDataButton(doc);
		RequestDispatcher dispatcher = request.getRequestDispatcher("docProfile.jsp");
		request.setAttribute("doctor", doctor);
		
		dispatcher.forward(request, response);
	}

}
