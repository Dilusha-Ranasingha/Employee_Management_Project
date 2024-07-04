package com.customer;

public class Employee {
	
	private int eid;
	private String name;
	private String age;
	private String email;
	private String phone;
	private String adres;
	private String slry;
	
	public Employee(int eid, String name, String age, String email, String phone, String adres, String slry) {
		this.eid = eid;
		this.name = name;
		this.age = age;
		this.email = email;
		this.phone = phone;
		this.adres = adres;
		this.slry = slry;
	}

	public int getEid() {
		return eid;
	}

	public String getName() {
		return name;
	}

	public String getAge() {
		return age;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getAdres() {
		return adres;
	}

	public String getSlry() {
		return slry;
	}
	
	
}
