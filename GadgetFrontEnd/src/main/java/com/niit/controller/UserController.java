package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.User;


@Controller
public class UserController {
	@Autowired
	UserDao dao;
	@Autowired
	CategoryDao Cdao;
	@Autowired
	ProductDao Pdao;


	
	

	
	@ModelAttribute
	public void Add(Model m){
		
		
   m.addAttribute("productlist", Pdao.ProductList());
	m.addAttribute("categorylist",Cdao.CategoryList());
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.GET)
	public ModelAndView add(){
		ModelAndView mav=new ModelAndView("AddUser");
		mav.addObject("cmd",new User());
	   return mav;
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String added(@ModelAttribute("cmd") User u){
		dao.InsertUser(u);
	    return "HomePage";
	}
	 @RequestMapping(value="/viewProducts/{cid}",method=RequestMethod.GET)
		public ModelAndView viewProduct(@PathVariable  int cid)
		 { 
		 System.out.println("under view products");
		 ModelAndView mav=new ModelAndView("Products");
		 List<Product> pl = Pdao.Productbyid(cid);
		 mav.addObject("ProductList", pl);
			
		   return mav;
		   }
	 @RequestMapping(value="/des/{productID}",method=RequestMethod.GET)
		public ModelAndView viewDescription(@PathVariable int productID)
		 { 
		 System.out.println("description");
		 ModelAndView mav=new ModelAndView("Description");
		 Product pl = Pdao.productDescription(productID);
		 mav.addObject("product", pl);
		// mav.addObject("cmd",new Cart());
			
		   return mav;
		   }
	 

	 
	
	 

}
