package com.pizzu.wallieApi;

import java.util.logging.LogManager;

import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.pizzu.wallieDto.*;
import com.pizzu.wallieService.CustomerService;

@CrossOrigin
@RestController
@RequestMapping(name="CustomerAPI")
public class CustomerAPI {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private Environment environment;
	
//	static Logger logger=(Logger) LogManager.getLogger(CustomerAPI.class.getName());
	@PostMapping(value = "customerLogin")
	public ResponseEntity<Customer> authenticateCustomer(@RequestBody Customer customer) throws Exception {
		try {
//			Logger.info("CUSTOMER TRYING TO LOGIN, VALIDATING CREDENTIALS. CUSTOMER EMAIL ID: "+customer.getEmailId());
			
			Customer customerfromDB = customerService.authenticateCustomer(customer.getEmailId(), customer.getPassword());
			
//			Logger.info("CUSTOMER LOGIN SUCCESS, CUSTOMER EMAIL : "+customerfromDB.getEmailId());
			
			return new ResponseEntity<Customer>(customerfromDB, HttpStatus.OK);
		} 
		catch (Exception e) {
			throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, environment.getProperty(e.getMessage()));
		}
	}
	
}
