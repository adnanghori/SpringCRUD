package com.spring.crud.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.crud.model.Product;
@Component
public interface ProductDao {
	public void createProduct(Product product);
	public List<Product> getAllProducts();
	public void deleteProduct(int productId);
	public Product getProduct(int productId);
}	
