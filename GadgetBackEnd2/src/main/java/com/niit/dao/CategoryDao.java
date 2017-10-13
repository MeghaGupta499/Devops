package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDao {

	public void InsertCategory(Category c);
	public List<Category> CategoryList();
	 public Category GetCategoryById(int cid);
}
