package com.pizzu.walliDao;

import java.util.List;

import com.pizzu.wallieDto.Product;

public interface CustomerProductDAO {


	public void addProductToList(String username, String productId);
	public List<String> getUserProductList(String username);
	public Product getProductById(Integer productId);
}
