package com.pizzu.walliDao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.pizzu.wallieDto.Product;
import com.pizzu.wallieEntity.ProductEntity;

public class ProductDAOImpl implements ProductDAO{

	@PersistenceContext
	private EntityManager entityManager;
	@Override
	public List<Product> getAllProducts() {
		Query query = entityManager.createQuery("select p from ProductEntity p");
		
		List<ProductEntity> productEntityList= query.getResultList();
		
		List<Product> listOfProducts = new ArrayList<Product>();
		for (ProductEntity productEntity : productEntityList) {
			Product product = new Product();
			product.setCategory(productEntity.getCategory());
			product.setProductId(productEntity.getProductId());

			listOfProducts.add(product);
		}
		return listOfProducts;
	}

}
