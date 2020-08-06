package com.pizzu.walliDao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.pizzu.wallieDto.Customer;
import com.pizzu.wallieDto.Product;
import com.pizzu.wallieEntity.CustomerEntity;
import com.pizzu.wallieEntity.ProductEntity;

public class CustomerProductDAOImpl implements CustomerProductDAO{

	@PersistenceContext
	private EntityManager entityManager;
	@Override
	public void addProductToList(String username, String productId) {
		CustomerEntity custEntity=entityManager.find(CustomerEntity.class,username);
		List<String> productList=custEntity.getProductIdList();
		productList.add(productId);
		custEntity.setProductIdList(productList);
		entityManager.persist(custEntity);
		
	}

	@Override
	public List<String> getUserProductList(String username) {
		CustomerEntity custEntity=entityManager.find(CustomerEntity.class,username);
		
		return custEntity.getProductIdList();
	}

	@Override
	public Product getProductById(Integer productId) {
		// TODO Auto-generated method stub
		ProductEntity productEntity=entityManager.find(ProductEntity.class, productId);
		Product product = new Product();
		product.setProductId(productEntity.getProductId());
		product.setCategory(productEntity.getCategory());

		return product;
	}

}
