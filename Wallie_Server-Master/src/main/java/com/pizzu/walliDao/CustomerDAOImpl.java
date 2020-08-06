package com.pizzu.walliDao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.pizzu.wallieDto.Customer;
import com.pizzu.wallieEntity.CustomerEntity;


@Repository(value="customerDAO")
public class CustomerDAOImpl implements CustomerDAO{

	@PersistenceContext
	private EntityManager entityManager;
	@Override
	public Customer getCustomer(String username) {
		// TODO Auto-generated method stub
		Customer cust=new Customer();
		CustomerEntity custEntity=entityManager.find(CustomerEntity.class, username);
		if(custEntity!=null) {
		cust.setEmailId(custEntity.getEmailId());
		cust.setUsername(custEntity.getUsername());
		cust.setPassword(custEntity.getPassword());
		cust.setProductIdList(custEntity.getProductIdList());
		cust.setName(custEntity.getName());
		}
		
		return cust;
	}

	@Override
	public String getPasswordOfCustomer(String username) {
		// TODO Auto-generated method stub
		CustomerEntity custEntity=entityManager.find(CustomerEntity.class, username);
		return custEntity.getPassword();
	}

//	@Override
//	public Customer getUserByEmailId(String emailId) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public Customer getUserByPhoneNumber(String phoneNumber) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public void updateProfile(Customer customer) {
		// TODO Auto-generated method stub
		CustomerEntity oldCustomerEntity = entityManager.find(CustomerEntity.class, customer.getUsername());
//		Customer oldCust=getCustomer(customer.getUsername());
		CustomerEntity newCustomerEntity = new CustomerEntity();
			if(oldCustomerEntity!=null) {
				oldCustomerEntity.setEmailId(customer.getEmailId());
				oldCustomerEntity.setName(customer.getName());
				oldCustomerEntity.setPassword(customer.getPassword());
				oldCustomerEntity.setUsername(customer.getUsername());
				oldCustomerEntity.setProductIdList(customer.getProductIdList());
			
				entityManager.persist(oldCustomerEntity);
			}
			else {
				newCustomerEntity.setEmailId(customer.getEmailId());
				newCustomerEntity.setName(customer.getName());
				newCustomerEntity.setPassword(customer.getPassword());
				newCustomerEntity.setUsername(customer.getUsername());
				newCustomerEntity.setProductIdList(customer.getProductIdList());
				
				entityManager.persist(newCustomerEntity);
			}
	}

	@Override
	public String authenticateCustomer(String username, String password) {
Query query = entityManager.createQuery("select c from CustomerEntity c where c.emailId = '"+username+"' and c.password = '"+password+"'");
		
		List<CustomerEntity> customerEntities = query.getResultList();
		if(customerEntities.isEmpty())
			return null;

		return customerEntities.get(0).getUsername();
	}

}
