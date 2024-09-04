package services;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Appointment;
import model.doctor;
import utils.DBConnect;



public class docDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	//docReadforAppointments
	public static List<doctor> validate(String specialization){
		try {
			ArrayList<doctor> listDoc = new ArrayList<doctor>();
			String query ="select *from doctor where specialization='"+specialization+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				doctor doc = new doctor();
				doc.setId(rs.getInt(1));
				doc.setName(rs.getString("name"));
				doc.setPhone(rs.getString("phone"));
				doc.setSpecialization(rs.getString("specialization"));
				doc.setAvailableDate(rs.getString("availableDate"));
				doc.setRoomNo(rs.getString("roomNo"));
				doc.setEmail(rs.getString("email"));
				doc.setPassword(rs.getString("password"));
				listDoc.add(doc);
			}
			return listDoc;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//insert
	public static boolean insertAppointment(String refID, String pName, String gender, String email, String mobileNo, String nic) {
		boolean isSuccess = false;
		 
		try {
			
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "insert into Appointments values (0,'"+pName+"','"+gender+"','"+email+"','"+mobileNo+"','"+nic+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		
		
		return isSuccess;
	}
	
	
	
	//readAppointment
	public static List<Appointment> viewAppointment(String nic){
		
		ArrayList<Appointment> app = new ArrayList<>();
		
	try {
	
		con = DBConnect.getConnection();
		stmt=con.createStatement();
		
		String sql = "select * from appointments where nic='"+nic+"'";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			String refID = rs.getString(1);
			String name = rs.getString(2);
			String gender = rs.getString(3);
			String email = rs.getString(4);
			String phone = rs.getString(5);
			String NIC = rs.getString(6);
			
			
			Appointment a = new Appointment(refID,name,gender,email,phone,NIC);
			
			app.add(a);
		}
		
	
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	return app;
	
}
	
	
	
	//update
	public static boolean updateAppointment(String refID, String pName, String gender, String email, String mobileNo, String nic) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "update appointments set patientName = '"+pName+"',gender = '"+gender+"',email ='"+email+"',mobileNo='"+mobileNo+"' where appointmentId='"+refID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//delete
	public static boolean deleteAppointment(String refId) {
    	try {
    		
    		

			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
    		String sql = "delete from appointments where appointmentId='"+refId+"'" ;
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
	

}
