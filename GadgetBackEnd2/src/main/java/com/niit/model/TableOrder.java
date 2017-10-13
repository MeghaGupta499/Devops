package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table
public class TableOrder {
@Id
@GeneratedValue
private int oid;
 private double total ;
 private String paymentType;

 @ManyToOne(fetch=FetchType.LAZY)
@JoinColumn(name="uemail")
private User user;



public int getOid() {
	return oid;
}

public void setOid(int oid) {
	this.oid = oid;
}

public double getTotal() {
	return total;
}

public void setTotal(double total) {
	this.total = total;
}

public String getPaymentType() {
	return paymentType;
}

public void setPaymentType(String paymentType) {
	this.paymentType = paymentType;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}
	
	
}
