package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;


@Controller
@RequestMapping(value="/Admin")
public class ProductController {
//	@Autowired
//	Product p;
	@Autowired 
	ProductDao dao;
	@Autowired
	CategoryDao Cdao;
	@Autowired
	SupplierDao Sdao;
	
	
	@ModelAttribute
	public void Add(Model m){
	m.addAttribute("productlist", dao.ProductList());
	m.addAttribute("categorylist",Cdao.CategoryList());
	}
	

	@RequestMapping(value="/addProduct",method=RequestMethod.GET)
	public ModelAndView Addproduct()
	{  System.out.println("inside add product");
		ModelAndView mav= new ModelAndView("AddProduct");

		mav.addObject("product", new Product());
		mav.addObject("cmd", new Category());
		mav.addObject("command", new Supplier());
		List<Category> cl= Cdao.CategoryList();
		List<Supplier> sl=Sdao.SupplierList();
//		for(Category c:cl)
		mav.addObject("categorylist",cl);
		mav.addObject("slist",sl);
		System.out.println(" categorylist"+ cl);
		System.out.println("end of add product");
		return mav;
	}
	
	@RequestMapping(value="/ProductSave",method=RequestMethod.POST)
	public String AddedProduct(@ModelAttribute("product") Product product,@RequestParam("image") MultipartFile file,HttpServletRequest request)
	{    System.out.println("inside productsave");

	 product.setCategory(Cdao.GetCategoryById(Integer.parseInt(request.getParameter("cid"))));
	 product.setSupplier(Sdao.GetsupplierById(Integer.parseInt(request.getParameter("sid"))));

//		int co = Integer.parseInt(req.getParameter("cid"));
//	    System.out.println("list of catgeory"+ co);
	//Product product=new Product();
	String filepath = request.getSession().getServletContext().getRealPath("/");
	String originalfile = file.getOriginalFilename();
	System.out.println(filepath+originalfile);
	product.setImageName(originalfile);
	dao.InsertProduct(product);
	try {
	byte imagebyte[] = file.getBytes();
	BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/image/"+product.getProductID()+".png"));
	System.out.println("FilePath:"+filepath);
	fos.write(imagebyte);
	fos.close();
	} catch (IOException e) {
	e.printStackTrace();
	} catch (Exception e) {
	e.printStackTrace();
	}
		
		return "modal";
		
	}
	
	
	@RequestMapping(value="/ProductList",method=RequestMethod.GET)
	public ModelAndView AddList()
	 { 
		ModelAndView mav=new ModelAndView("ProductList");
		System.out.println("inside addList");
		//mav.addObject("cmd",new Product());
		List<Product> l=dao.ProductList();
		for(Product li:l)
		{
			System.out.println(li.productName);
		}
	    mav.addObject("productlist", l);
	    System.out.println("end of productlist");
	   return mav;
	
	}
	 @RequestMapping(value="/deleteP/{productID}",method = RequestMethod.GET)  
		
		    public ModelAndView delete(@PathVariable  int productID){  
		 System.out.println("inside delete");
		 
		        dao.DeleteProduct(productID);
		       return new ModelAndView("redirect:/Admin/ProductList"); 
		 
		   } 
	 @RequestMapping(value="/updatep/{productID}")  
	    public ModelAndView edit(@PathVariable int productID){  
		
		 Product pro=dao.GetProductById(productID);
		 ModelAndView mav= new ModelAndView("editupdate","cmd",pro);
		 	
		 	List<Category> cl= Cdao.CategoryList();
			List<Supplier> sl=Sdao.SupplierList();
		 	mav.addObject("categorylist",cl);
			mav.addObject("slist",sl);
	        return mav;
	        
	    }  
	 
	 
	 
	    @RequestMapping(value="/editUpdate",method = RequestMethod.POST)  
	    public ModelAndView editsave(@ModelAttribute("cmd") Product product,@RequestParam("image") MultipartFile file,HttpServletRequest request){
	    	
	    	System.out.println("in: "+product);
	    	 product.setCategory(Cdao.GetCategoryById(Integer.parseInt(request.getParameter("cid"))));
	    	 product.setSupplier(Sdao.GetsupplierById(Integer.parseInt(request.getParameter("sid"))));
	      dao.UpdateProduct(product);
	      String filepath = request.getSession().getServletContext().getRealPath("/");
	  	String originalfile = file.getOriginalFilename();
	  	System.out.println(filepath+originalfile);
	  	System.out.println("orginal file name " +originalfile);
	    product.setImageName(originalfile);
	  
	  	try {
	  	byte imagebyte[] = file.getBytes();
	  	BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/image/"+product.getProductID()+".png"));
	  	System.out.println("FilePath:"+filepath+originalfile);
	  	fos.write(imagebyte);
	  	fos.close();
	  	} catch (IOException e) {
	  	e.printStackTrace();
	  	} catch (Exception e) {
	  	// TODO Auto-generated catch block
	  	e.printStackTrace();
	  	}
	        return new ModelAndView("redirect:/Admin/ProductList");  
	    }  
	    
	    
	    // category stars here
	    
	    
	    @RequestMapping(value="/addCategory",method=RequestMethod.GET)
		public ModelAndView Addcategory()
		{
			ModelAndView mav= new ModelAndView("addCategory");
			mav.addObject("cmd", new Category());
			return mav;
		}
	    
	    
	    @RequestMapping(value="/CategorySave", method=RequestMethod.POST)
	    public String AddedCategory(@ModelAttribute("cmd")Category cid)
		{      
		    Cdao.InsertCategory(cid);
			return "model1";
			
		}
	    @RequestMapping(value="/CategoryList",method=RequestMethod.GET)
		public ModelAndView AddCategoryList()
		 { 
			ModelAndView mav=new ModelAndView("CategoryList");
			System.out.println("inside addList");
			mav.addObject("cmd",new Product());
			List<Category> l=Cdao.CategoryList();
		    mav.addObject("list", l);
		    System.out.println("end of productlist");
		   return mav;
		
		}
	    
	    // supplier strts here
	    
	    
	    @RequestMapping(value="/SupplierSave", method=RequestMethod.POST)
	    public String AddedSupplier(@ModelAttribute("command")Supplier sid)
		{ 
	    	Sdao.insertSupplier(sid);
			return "model2";
			
		}
	    
	    @RequestMapping(value="/SupplierList",method=RequestMethod.GET)
		public ModelAndView AddSupplierList()
		 { 
			ModelAndView mav=new ModelAndView("SupplierList");
			System.out.println("inside addList");
			mav.addObject("cmd",new Supplier());
			List<Supplier> l=Sdao.SupplierList();
		    mav.addObject("list", l);
		    System.out.println("end of productlist");
		   return mav;
		
		}
	    
	
	    
}
