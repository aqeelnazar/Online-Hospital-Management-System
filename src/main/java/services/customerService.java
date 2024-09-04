package services;

import java.sql.ResultSet;
import java.sql.Statement;

import model.customer;
import utils.DBConnect;

public class customerService {
	public void regCustomer(customer cus) {
//    public boolean regCustomer(String name, String phone, String address, String email, String pwd) {
    	
    	try {
            String query = "insert into patient values('"+cus.getEmail()+"','"+cus.getName()+"','"+cus.getPhone()+"','"+cus.getAddress()+"','"+cus.getPassword()+"')";
            Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
    }
//    	boolean isSuccess = false;
//    	
//    	String url = "jdbc:mysql://localhost:3306/patient";
//    	String username = "root";
//    	String password = "1234";
//    	
//        try {
//        	
//        	Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection conn = DriverManager.getConnection(url, username, password);
//			Statement stmnt = conn.createStatement();
//			
//            String query = "insert into patient (email, name, phone, address, password )values('"+email+"','"+name+"','"+phone+"','"+address+"','"+pwd+"')";
//            
//            //Connection con = DBConnect.getConnection();
//            
//            int reslt = stmnt.executeUpdate(query);
//			
//			if(reslt > 0)
//			{
//				isSuccess = true;
//				
//				
//			}
//		
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        
//        return isSuccess;
//
//    }

    public boolean validate(customer cus) {
        try {
            String query = "select * from patient where Email = '" + cus.getEmail() + "' and Password='" + cus.getPassword() + "'";
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

    public customer getOne(customer cus) {
        try {
            String query = "select * from patient where email = '" + cus.getEmail() + "' and password='" + cus.getPassword() + "'";
            Statement statement = DBConnect.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {

                cus.setName(rs.getString("name"));
                cus.setPhone(rs.getString("phone"));
                cus.setEmail(rs.getString("email"));
                cus.setPassword(rs.getString("password"));
                cus.setAddress(rs.getString("address"));
       
                return cus;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
 

    public customer singleDataButtonData(customer cus) {
        try {
            String query = "select * from patient where email = '" + cus.getEmail() + "'";
            Statement statement = DBConnect.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                cus.setName(rs.getString("name"));
                cus.setPhone(rs.getString("phone"));
                cus.setEmail(rs.getString("email"));
                cus.setPassword(rs.getString("password"));
                cus.setAddress(rs.getString("address"));
                return cus;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateCustomer(customer customer) {
        try {
            String query = "update patient SET name='"+customer.getName()+ "',phone='"+customer.getPhone()+"',email='"+customer.getEmail()+"',password='"+customer.getPassword()+"',address='"+customer.getAddress()+"' where email='"+customer.getEmail()+"'";
            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCustomer(customer cus) {
        try {

            String query = "delete from patient where email ='"+cus.getEmail()+"'";

            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
