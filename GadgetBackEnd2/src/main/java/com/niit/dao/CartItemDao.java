package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Product;

public interface CartItemDao {
	 public void insertCartItem(Cart c);
	 public void DeleteCartItem(int cartid);
	 public void UpdateCartItem(Cart c);
	 public List<Cart> findCartList(String usermail);
	 public Cart GetCartById(int cartId);
	public Cart getCartItem(int pid,String userid);
}
