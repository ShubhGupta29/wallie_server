package com.pizzu.walliDao;

import com.pizzu.wallieDto.Customer;

public interface CustomerDAO {
	
	public Customer getCustomer(String username);
	public String getPasswordOfCustomer(String username) ;
//	public Customer getUserByEmailId(String emailId);
//	public Customer getUserByPhoneNumber(String phoneNumber);

	public void updateProfile(Customer customer);
	public String authenticateCustomer(String username, String password);

}
