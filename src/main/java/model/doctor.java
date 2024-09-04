package model;

public class doctor{
	int id;
	String name;
	String phone;
	String specialization;
	String availableDate;
	String availableTime;
	String roomNo;
	String email;
	String password;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAvailableDate() {
		return availableDate;
	}
	public String getAvailableTime() {
		return availableTime;
	} 
	public String getRoomNo() {
		return roomNo;
	}
	public void setAvailableDate(String availableDate) {
		this.availableDate = availableDate;
	}
	public void setAvailableTime(String availableTime) {
		this.availableTime = availableTime;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	public String getSpecialization() {
		return specialization;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
