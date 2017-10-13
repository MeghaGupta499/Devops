package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Table
@Entity
public class CartItem {

@Id
@GeneratedValue
private int cartItemId;
private int quantity;
private float totalPrice;
@ManyToOne
@JoinColumn(name="cartid")
private Cart cart;

@OneToOne
@JoinColumn(name="proid")
private Product product;

public int getCartItemId() {
	return cartItemId;
}

public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}

public float getTotalPrice() {
	return totalPrice;
}

public void setTotalPrice(float totalPrice) {
	this.totalPrice = totalPrice;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}



public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}

}
