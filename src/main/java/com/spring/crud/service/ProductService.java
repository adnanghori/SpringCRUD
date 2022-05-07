package com.spring.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.crud.dao.adapter.ProductDaoAdapter;
import com.spring.crud.model.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDaoAdapter productDaoAdapter;
	
	public void createProduct(Product product) {
	 productDaoAdapter.createProduct(product);
	}
	
	public List<Product> getAllProducts(){
		List<Product> products = productDaoAdapter.getAllProducts();
		return products;
	}
	
	public void deleteProduct(int productId) {
		productDaoAdapter.deleteProduct(productId);
	}
	public Product getProduct(int productId) {
		Product product = productDaoAdapter.getProduct(productId);
		return product;
	}
}
