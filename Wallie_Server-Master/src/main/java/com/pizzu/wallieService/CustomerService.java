package com.pizzu.wallieService;

import com.pizzu.wallieDto.Customer;

public interface CustomerService {

	public Customer authenticateCustomer(String username, String password) throws Exception;

}
