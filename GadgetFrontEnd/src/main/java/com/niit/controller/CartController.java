package com.niit.controller;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;


import com.niit.dao.CartItemDao;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartController {
	@Autowired
	UserDao udao;

	@Autowired
	ProductDao Pdao;

    @Autowired
    Cart c;
    @Autowired
    UserDao userdao;
    @Autowired
	CategoryDao Cdao;
@Autowired
CartItemDao cidao;
    
    
	@ModelAttribute
	public void Add(Model m){
	m.addAttribute("productlist", Pdao.ProductList());
	m.addAttribute("categorylist",Cdao.CategoryList());
	}
	 @RequestMapping(value="/addToCart/{pid}",method=RequestMethod.POST)
		public ModelAndView addToCart(@PathVariable("pid") int pid,@RequestParam("quantity") String quantity,Principal principal ){
		 System.out.println("inside cart");
		 ModelAndView mav;
		 if(principal!=null){
			  mav=new ModelAndView("Cart");
			String name=principal.getName();
			User u=  udao.getUserByName(name);
			Product p= Pdao.GetProductById(pid);
			//mav.addObject("product", Pdao.GetProductById(pid));
		
			//calculating total for cart items
			String imageName=p.getImageName();
			int price=Integer.parseInt(p.getPrice());
			int quant=Integer.parseInt(quantity);
			String productName=p.getProductName();
			String description=p.getDescription();
			int id=p.getProductID();
			
			float totalprice=price*quant;
			c.setFinalAmount(totalprice);
			c.setImgName(imageName);
	       	c.setUser(u);
	        c.setProductId(id);
	       	c.setPrice(price);
	       	c.setCartProductName(productName);
	       	c.setCartProductDescription(description);
	       	
			Cart cartexists=cidao.getCartItem(pid, name);
			if(cartexists==null)
			{
				c.setTotalItems(quant);     	
				cidao.insertCartItem(c);
				
//				//updating cart instance
//				float grandTotal= c.getFinalAmount();
//				grandTotal +=totalprice;
//				c.setFinalAmount(grandTotal);
//				int items=c.getTotalItems();
//				items +=1;
//				c.setTotalItems(items);
//				float totalAmount =0;
//				totalAmount+=grandTotal;
//				c.setGrandAmount(totalAmount);
			}
			
			else
			{
				c.setCartid(cartexists.getCartid());
				c.setTotalItems(cartexists.getTotalItems()+quant);
				cidao.UpdateCartItem(c);
			}
			
		
			
			
			//updating product instance
			 int stock=p.getStock();
			 int fin=stock-quant;
			 p.setStock(fin);

			 
			 Pdao.UpdateProduct(p);
			 
			 
			 
			 
			mav.addObject("cartinfo",cidao.findCartList(name));
			
			
			
			
		 }
		 else
		 {
			 mav=new ModelAndView("login");
			 
		 }
		return mav;
			
			
		   
		}
	 
	/*@RequestMapping(value="/addToCart/{pid}",method=RequestMethod.POST)
	public ModelAndView addToCart(@PathVariable int pid)
	{
		ModelAndView mav=new ModelAndView("Cart");
		mav.addObject("product", Pdao.GetProductById(pid));
		return mav;
		
	}*/
	
	@RequestMapping(value="/CheckOut",method=RequestMethod.GET)
	public ModelAndView checkout(Principal principal)
	{
		ModelAndView mav=new ModelAndView("Checkout");
	String name=principal.getName();
	User u=userdao.getUserByEmail(name);
	List<Cart> cart=cidao.findCartList(name);
	mav.addObject("user", u);
	mav.addObject("cart", cart);
	
		return mav;
		
	}
	@RequestMapping(value="/Thankyou",method=RequestMethod.POST)
	public ModelAndView End()
	{
		ModelAndView mav=new ModelAndView("ThankYou");
         return mav;
		
	}
	
	@RequestMapping(value="/deleteCart/{cartid}",method=RequestMethod.GET)
	public ModelAndView removeCart(@PathVariable int cartid,Principal principal)
	{ 	 ModelAndView mav=new ModelAndView("Cart");
		
		String name=principal.getName();

		cidao.DeleteCartItem(cartid);
		mav.addObject("cartinfo",cidao.findCartList(name));

		 return mav; 
	}
}
