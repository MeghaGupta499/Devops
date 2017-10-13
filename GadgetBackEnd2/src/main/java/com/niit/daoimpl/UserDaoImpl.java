package com.niit.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Repository(value = "UserDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	public void InsertUser(User u) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(u);
		t.commit();
		ssn.close();
	}

	public User getUserById(int uid) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		User u = (User) ssn.load(User.class, uid);
		t.commit();
		ssn.close();
		return u;
	}

	public User getUserByName(String uname) {
//		Session ssn=sessionFactory.openSession();
//		Transaction t=ssn.getTransaction();
//		t.begin();
//		User u = ssn.load(User.class, uname);
//		t.commit();
//		ssn.close();
		User u=sessionFactory.getCurrentSession().load(User.class, uname);
		return u;
	}

	public User getUserByEmail(String uemail) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		User u = ssn.load(User.class, uemail);
		t.commit();
		ssn.close();
		return u;

	}

}
