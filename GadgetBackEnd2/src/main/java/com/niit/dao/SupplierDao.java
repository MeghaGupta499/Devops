package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDao {
 public void insertSupplier(Supplier s);
 public  List<Supplier> SupplierList();
 public Supplier GetsupplierById(int sid);
}
