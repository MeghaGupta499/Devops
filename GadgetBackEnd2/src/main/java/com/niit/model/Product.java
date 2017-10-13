package com.niit.model;



import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Component
@Entity
@Table(name="ProductTable")
public class Product {

	@Id
	@GeneratedValue
	public int  productID;
	public String productName;
	public String description;
	public int stock;
	public String price;
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="cid")
	private Category category;
	@ManyToOne  // one supplier can provide many product and we use many first ,as product are many  and supplier is one .
	@JoinColumn(name="sid")
	private Supplier supplier;
	
	public String imageName;
	@Transient
	public MultipartFile image;
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	
	
}
