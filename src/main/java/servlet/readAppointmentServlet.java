package servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Appointment;
import services.docDBUtil;

@WebServlet("/readAppointmentServlet")
public class readAppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nic = request.getParameter("nic");

        try {
            List<Appointment> appointmentDetails = docDBUtil.viewAppointment(nic);
            if (appointmentDetails.isEmpty()) {
                
                RequestDispatcher dis = request.getRequestDispatcher("noAppointment.jsp");
                dis.forward(request, response);
            } else {
                request.setAttribute("appointmentDetails", appointmentDetails);
                RequestDispatcher dis = request.getRequestDispatcher("viewAppointment.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
          
        }
    }
}
