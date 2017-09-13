package com.niit.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Repository(value="UserDao")
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



		public int update(UserDao uid) {
		 Session session = sessionFactory.openSession();
	     session.beginTransaction();
	     session.saveOrUpdate(uid);
	 System.out.println("Updated Successfully");
	  session.getTransaction().commit();
	return 0;
		
	}


	public User getUserById(int uid) {
		 Session ssn = sessionFactory.openSession(); 
		 ssn.beginTransaction();
		 User u = (User) ssn.load(User.class, uid); 
		  ssn.getTransaction().commit();
		return u; 
	}
 
}
