package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
 public void InsertProduct(Product p);
 public List<Product> ProductList();
 public void DeleteProduct(int productID);
 public Product GetProductById(int productID);
 public void UpdateProduct(Product product);
 public List<Product> Productbyid(int productid);
 public Product productDescription(int pid);
}
