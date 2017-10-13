package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	SessionFactory sessionFactory;

	public void InsertCategory(Category c) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(c);
		t.commit();
		ssn.close();

	}

	public List<Category> CategoryList() {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		List<Category> list = ssn.createQuery("from Category").list();
		t.commit();
		ssn.close();
		return list;
	}

	public Category GetCategoryById(int cid) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Category c = ssn.get(Category.class, cid);
		t.commit();
		ssn.close();
		return c;
	}

}
