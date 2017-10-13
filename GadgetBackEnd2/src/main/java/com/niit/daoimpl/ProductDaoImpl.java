
package com.niit.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {

	
	@Autowired
	SessionFactory sessionFactory;
	public void InsertProduct(Product p) {
	System.out.println("inside insert");
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
	    ssn.save(p);
		t.commit();
		ssn.close();
		
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> ProductList() {
		System.out.println("inside product list impl");
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Product> list=ssn.createQuery("from Product").list();
		for(Product l:list)
		{
			System.out.println(l.productName);
		}
		ssn.getTransaction().commit();
		System.out.println("end  of impl");
		return list;
	}

	public void DeleteProduct(int productID) {
		System.out.println("inside impl delte");
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		Product p=(Product)ssn.load(Product.class, productID);
		ssn.delete(p);
	     ssn.getTransaction().commit();
		System.out.println("end of impl delete");
		ssn.close();
		
	}

	public Product GetProductById(int productID) {
		 Session ssn = sessionFactory.openSession(); 
	Transaction t=ssn.getTransaction();
		t.begin();
//		  Product p = ssn.get(Product.class,productID);
//		  ssn.getTransaction().commit();
		Product p= ssn.get(Product.class,productID);
		t.commit();
		ssn.close();
		return p;
		
	}

	public void UpdateProduct(Product product) {
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.update(product);
		session .getTransaction().commit();
		session.close();
	   
	    
	}

	public List<Product> Productbyid(int cid) {
		 Session ssn=sessionFactory.openSession();
		 ssn.beginTransaction();
		 List<Product> list=ssn.createQuery("from Product where cid="+cid).list();
		return list;
	}
	
	
	public Product productDescription(int pid)
	{ 
		Session ssn=sessionFactory.openSession();
		 ssn.beginTransaction();
		  Product p = ssn.get(Product.class,pid);
		 return p;
		 
	}

}
