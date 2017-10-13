package com.niit.model;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import org.springframework.stereotype.Component;


@Component
@Entity
@Table
public class Cart {
   
	@Id
	@GeneratedValue
	private  int cartid;
	private int totalItems ;
	private float finalAmount;
	private String imgName;
    private String cartProductName;
    private String cartProductDescription;
    private int productId;
    private int price;
    private float grandAmount;

	
	@OneToOne
	private User user;
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="cart")
	private List<CartItem> cartitem;
	

	public float getGrandAmount() {
		return grandAmount;
	}
	public void setGrandAmount(float grandAmount) {
		this.grandAmount = grandAmount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getCartProductName() {
		return cartProductName;
	}
	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}
	public String getCartProductDescription() {
		return cartProductDescription;
	}
	public void setCartProductDescription(String cartProductDescription) {
		this.cartProductDescription = cartProductDescription;
	}
//	public MultipartFile getImage() {
//		return image;
//	}
//	public void setImage(MultipartFile image) {
//		this.image = image;
//	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public int getTotalItems() {
		return totalItems;
	}
	public void setTotalItems(int totalItems) {
		this.totalItems = totalItems;
	}
	public float getFinalAmount() {
		return finalAmount;
	}
	public void setFinalAmount(float finalAmount) {
		this.finalAmount = finalAmount;
	}
	public List<CartItem> getCartitem() {
		return cartitem;
	}
	public void setCartitem(List<CartItem> cartitem) {
		this.cartitem = cartitem;
	}
	
		public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	
	
}
