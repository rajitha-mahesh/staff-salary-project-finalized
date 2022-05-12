package com.staff;
//assign the data obtain from the database
public class Staff {
	private int staffid;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private String salary;
	
	
	//constructors
	public Staff(int staffid, String name, String email, String phone, String username, String password, String salary) {
		this.staffid = staffid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.salary = salary;
	}


	//to return data get only getters are formed
	//only set the values obtained.
	public int getStaffid() {
		return staffid;
	}




	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}



	public String getPhone() {
		return phone;
	}




	public String getUsername() {
		return username;
	}



	public String getPassword() {
		return password;
	}


	public String getSalary() {
		return salary;
	}


}
