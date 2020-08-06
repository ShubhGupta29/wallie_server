package com.pizzu.wallieService;

import java.util.List;

public interface ProductService {

	public void addProductToList(String username, String productId) throws Exception;
	public List<String> getUserProductList(String username) throws Exception;
	public void deleteProductFromCart(String username, Integer productId);
}
