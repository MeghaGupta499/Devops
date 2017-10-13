package com.niit.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {
	@Autowired
	SessionFactory sessionFactory;

	public void insertCartItem(Cart c) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(c);
		t.commit();
		ssn.close();

	}

	public void DeleteCartItem(int cartId) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Cart c = (Cart) ssn.load(Cart.class, cartId);
		ssn.delete(c);
		t.commit();
		ssn.close();

	}

	public void UpdateCartItem(Cart c) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.update(c);
		t.commit();
		ssn.close();
	}

	public List<Cart> findCartList(String usermail) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		List<Cart> list =ssn.createQuery("from Cart where user = :usermail").setString("usermail", usermail).list();
		t.commit();
		ssn.close();
		return list;
	}

	public Cart GetCartById(int cartId) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Cart p = ssn.get(Cart.class, cartId);
		t.commit();
		ssn.close();
		return p;
	}

	public Cart getCartItem(int pid, String userid) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		Cart c = (Cart) ssn.createQuery("from Cart where user=:uid and productID=:id").setString("uid", userid).setInteger("id", pid).uniqueResult();
		t.commit();
		ssn.close();
		return c;
	}

}
