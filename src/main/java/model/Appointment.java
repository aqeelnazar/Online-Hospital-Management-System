package model;

public class Appointment {
	
	private String refID;
	private String pName;
	private String gender;
	private String email;
	private String mobileNo;
	private String nic;
	
	public Appointment(String refID,String pName, String gender, String email, String mobileNo, String nic ) {
		this.refID = refID;
		this.pName = pName;
		this.gender = gender;
		this.email = email;
		this.mobileNo = mobileNo;
		this.nic = nic;
		
	}
	
	public String getRefID() {
		return refID;
	}
	public String getpName() {
		return pName;
	}
	public String getGender() {
		return gender;
	}
	public String getEmail() {
		return email;
	}
	public String getmobileNo() {
		return mobileNo;
	}
	
	
	
	public String getNic() {
		return nic;
	}
	
	
	
	

}

