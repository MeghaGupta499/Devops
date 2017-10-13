
package com.niit.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name="UserTable")
public class User {
	    
	    @Id 
	    @Email
		private String uemail; 
	    @GeneratedValue
		private int uid;
	    @NotNull
		private String uname;
	    @NotNull
	    @Size(min=1, max=30,message="user password should be between 1 to 30 characters long")
	    private String upassword;
	    @NotNull
	    @Pattern(regexp="[\\d]{10}",message="please enter 10 digits")
		private String ucontact;
	    @NotNull
	   private String  addressLine1;
	    @NotNull
	   private String addressLine2;
	    @NotNull
	    private String city;
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getAddressLine1() {
			return addressLine1;
		}
		public void setAddressLine1(String addressLine1) {
			this.addressLine1 = addressLine1;
		}
		public String getAddressLine2() {
			return addressLine2;
		}
		public void setAddressLine2(String addressLine2) {
			this.addressLine2 = addressLine2;
		}
		private String role;
		private boolean enable;
		
		@OneToOne(mappedBy="user",fetch=FetchType.EAGER)
		private Cart cart;
		
		public Set<TableOrder> getOrder() {
			return order;
		}
		public void setOrder(Set<TableOrder> order) {
			this.order = order;
		}
		public Cart getCart() {
			return cart;
		}
		public void setCart(Cart cart) {
			this.cart = cart;
		}
		/*public Set<TableOrder> getOrder() {
			return order;
		}
		public void setOrder(Set<TableOrder> order) {
			this.order = order;
		}*/
		@OneToMany(fetch=FetchType.LAZY,mappedBy="user")
		 private Set<TableOrder> order;
		
		public boolean isEnable() {
			return enable;
		}
		public void setEnable(boolean enable) {
			this.enable = enable;
		}
		public  String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public String getUemail() {
			return uemail;
		}
		public void setUemail(String uemail) {
			this.uemail = uemail;
		}
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getUpassword() {
			return upassword;
		}
		public void setUpassword(String upassword) {
			this.upassword = upassword;
		}
		public String getUcontact() {
			return ucontact;
		}
		public void setUcontact(String ucontact) {
			this.ucontact = ucontact;
		}
		
	
		
		
}

