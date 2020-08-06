package com.pizzu.wallieDto;

import java.util.List;

public class Customer {
String username;
String password;
String name;
String emailId;
List<String> productIdList;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getEmailId() {
	return emailId;
}
public void setEmailId(String emailId) {
	this.emailId = emailId;
}
public List<String> getProductIdList() {
	return productIdList;
}
public void setProductIdList(List<String> prodctId) {
	this.productIdList = prodctId;
}


}
