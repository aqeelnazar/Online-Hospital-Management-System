package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.doctor;
import services.docDBUtil;

@WebServlet("/selectDoctorServlet")
public class selectDoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        String specialization = request.getParameter("specialization");
        
        List<doctor> doctors = docDBUtil.validate(specialization); // Fetch doctors by specialization
        request.setAttribute("doctors", doctors); // Set the list of doctors as an attribute

        RequestDispatcher dis = request.getRequestDispatcher("selectDoctorAccount.jsp");
        dis.forward(request, response);
    }
}
