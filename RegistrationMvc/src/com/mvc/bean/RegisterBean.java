package com.mvc.bean;
 
public class RegisterBean {
 
 private String firstName;
 private String lastName;
 private String addressOne;
 private String addressTwo;
 private String city;
 private String state;
 private String zipCode;
 private String country;

 
  
 
 
 public String getFirstName() {
 return firstName;
 }
 public void setFirstName(String firstName) {
 this.firstName = firstName;
 }
 
 public String getLastName() {
 return lastName;
}
 public void setLastName(String lastName) {
 this.lastName = lastName;
 }
 
 public String getAddressOne() {
 return addressOne;
 }
 
 public void setAddressOne(String addressOne) {
	 this.addressOne= addressOne;
 }
 
 public String getAddressTwo() {
 return addressTwo;
 }
 
 public void setAddressTwo(String addressTwo) {
	 this.addressTwo= addressTwo;
 }
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getZipCode() {
	return zipCode;
}

public void setZipCode(String zipCode) {
	this.zipCode = zipCode;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

	 
 
}