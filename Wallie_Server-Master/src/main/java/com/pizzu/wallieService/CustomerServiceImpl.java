package com.pizzu.wallieService;

import org.springframework.beans.factory.annotation.Autowired;

import com.pizzu.walliDao.CustomerDAO;
import com.pizzu.wallieDto.Customer;

public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerDAO customerDAO;
	@Override
	public Customer authenticateCustomer(String username, String password) throws Exception {
		Customer customer = null;
		String customerUsernameFromDAO = customerDAO.authenticateCustomer(username, password);
		if(customerUsernameFromDAO!=null){
			customer=customerDAO.getCustomer(username);
//				customer  = customerDAO.getCustomer(customerEmailIdFromDAO);
			if(customer.getPassword()!=password) {
				throw new Exception("CustomerService.INVALID_CURRENT_PASSWORD");
			}
			else {
				return customer;
			}
		}
		else
			throw new Exception ("CustomerService.INVALID_CREDENTIALS");
		
//		return custsomer;
	}

}
