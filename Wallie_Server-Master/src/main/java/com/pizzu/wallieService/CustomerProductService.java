package com.pizzu.wallieService;

import java.util.List;

import com.pizzu.wallieDto.Product;

public interface CustomerProductService {
	
	public List<Product> getAllProducts() throws Exception;

}
