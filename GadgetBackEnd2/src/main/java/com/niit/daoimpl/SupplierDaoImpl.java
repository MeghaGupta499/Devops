package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	SessionFactory sessionFactory;

	public void insertSupplier(Supplier s) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(s);
		t.commit();
		ssn.close();

	}

	public List<Supplier> SupplierList() {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		List<Supplier> list = ssn.createQuery("from Supplier").list();
		t.commit();
		ssn.close();
		return list;
	}

	public Supplier GetsupplierById(int sid) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Supplier s = ssn.get(Supplier.class, sid);
		t.commit();
		ssn.close();
		return s;
	}

}
