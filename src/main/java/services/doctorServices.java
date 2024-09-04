package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import model.Appointment;
import model.customer;
import model.doctor;
import utils.DBConnect;

public class doctorServices {
	public void regDoctor(doctor doc) {
		
		try {
			String query = "insert into doctor values('"+doc.getId()+"','"+doc.getEmail()+"','"+doc.getName()+"','"+doc.getPhone()+"','"+doc.getPassword()+"','"+doc.getSpecialization()+"','"+doc.getAvailableDate()+"','"+doc.getRoomNo()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public boolean validate(doctor doc) {
		try {
			String query = "select * from doctor where email = '"+ doc.getEmail()+"' and password='"+doc.getPassword()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public doctor getOne(doctor doc) {
		try {
			String query = "select * from doctor where email = '"+ doc.getEmail()+"' and password='"+doc.getPassword()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				
				doc.setName(rs.getString("name"));
				doc.setPhone(rs.getString("phone"));
				doc.setSpecialization(rs.getString("specialization"));
				doc.setAvailableDate(rs.getString("availableDate"));
				doc.setRoomNo(rs.getString("roomNo"));
				doc.setEmail(rs.getString("email"));
				doc.setPassword(rs.getString("password"));
				return doc;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<doctor> getAllDoctor(){
		try {
			ArrayList<doctor> listDoc = new ArrayList<doctor>();
			String query ="select *from doctor";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				doctor doc = new doctor();
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
		} catch (Exception e) {
			e.addSuppressed(e);
			return null;
		}
	}
	 public ArrayList<customer> getAllCustomer() {
	        try {
	            ArrayList<customer> listCus = new ArrayList<customer>();
	            String query = "select * from patient";
	            Statement statement = DBConnect.getConnection().createStatement();
	            ResultSet rs = statement.executeQuery(query);
	            while (rs.next()) {
	                customer cus = new customer();
	                cus.setName(rs.getString("name"));
	                cus.setPhone(rs.getString("phone"));
	                cus.setEmail(rs.getString("email"));
	                cus.setPassword(rs.getString("password"));
	                cus.setAddress(rs.getString("address"));
	                listCus.add(cus);
	            }
	            return listCus;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	 public ArrayList<Appointment> viewAppointment(){
		try {
			ArrayList<Appointment> app = new ArrayList<Appointment>();
			String sql = "select * from appointments";
            Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(sql);
			
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
		return null;
	}
	 
	public doctor singleDataButton(doctor doc) {
		try {
			String query = "select * from doctor where email = '"+ doc.getEmail()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				doc.setName(rs.getString("name"));
				doc.setPhone(rs.getString("phone"));
				doc.setSpecialization(rs.getString("specialization"));
				doc.setAvailableDate(rs.getString("availableDate"));
				doc.setRoomNo(rs.getString("roomNo"));
				doc.setEmail(rs.getString("email"));
				doc.setPassword(rs.getString("password"));
				return doc;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateDoctor(doctor doc) {
		try {
			String query = "update doctor SET name='" + doc.getName() + "', phone='" + doc.getPhone() + "', email='" + doc.getEmail() + "', password='" + doc.getPassword() + "', specialization='" + doc.getSpecialization() + "', availableDate='" +doc.getAvailableDate()+"', RoomNo='"+doc.getRoomNo()+"' where email='" + doc.getEmail() + "'";
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteDoctor(doctor doc) {
		try {
			
			String query = "delete from doctor where email ='"+doc.getEmail()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
