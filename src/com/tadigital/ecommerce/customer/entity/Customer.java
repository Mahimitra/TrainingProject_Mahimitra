package com.tadigital.ecommerce.customer.entity;

import java.util.Calendar;

//ENTITY/BEAN/POJO/MODEL CLASS
public class Customer {
	//PROPERTIES
	private int id;
	private String firstName;
	private String lastName;

	private String email;
	private String password;
	private String gender;
	private String Address;
	private String City;
	private long Zip;
	private String State;
	private String Country;
	private long Contact;
	
	
	
	
	public Customer() {
	}
	
	public Customer(int id, String firstName, String lastName, String email, String password) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
	}
	
	//GETTER OR ACCESSOR METHODS
	public int getId() {
		return id;
	}
	public String getFirstName() {
		return firstName;
	}
	public String getLastName() {
		return lastName;
	}
	
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	
	//SETTER OR MUTATOR METHODS
	public void setId(int id) {
		this.id = id;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + 
				lastName +  ", email=" + email + 
				", password=" + password + "]";
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public long getZip() {
		return Zip;
	}

	public void setZip(long zip) {
		Zip = zip;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public long getContact() {
		return Contact;
	}

	public void setContact(long contact) {
		Contact = contact;
	}




}