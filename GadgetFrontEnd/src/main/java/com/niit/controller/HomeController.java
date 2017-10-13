package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.User;


@Controller
public class HomeController {
	
	@Autowired
	 UserDao Udao;
	@Autowired
     ProductDao Pdao;
	@Autowired
     CategoryDao Cdao;
	
	@RequestMapping(value="/")
	public String start(){
		Pdao.ProductList();
		return "HomePage";
	}
	
	
	

	@ModelAttribute
	public void Add(Model m){
	m.addAttribute("productlist", Pdao.ProductList());
	m.addAttribute("categorylist",Cdao.CategoryList());
	}
	
	@RequestMapping(value="/login")
	public String login(){

		return "login";
	}
	

	
	@RequestMapping(value="/noaccess")
	public String access(){

		return "noAccessPage";
	}
	
	
	
	
	@RequestMapping(value="/Registerpage", method= RequestMethod.GET)
	public ModelAndView Register()
	{
		ModelAndView mav= new ModelAndView();
		mav.addObject("user", new User());
		mav.setViewName("AddUser");
		return mav;
	}
	
	
	@RequestMapping(value="/SaveRegister", method= RequestMethod.POST)
	public ModelAndView SaveRegister(@Valid @ModelAttribute("user") User user, BindingResult result)
	{
		System.out.println("save user");
		ModelAndView mav= new ModelAndView();
		if(result.hasErrors())
		{
			mav.setViewName("AddUser");
			return mav;
		}
		else
		{
			user.setRole("User");
		    Udao.InsertUser(user);
		    mav.setViewName("redirect:/login");
		    return mav;
		}
		
	}
	
}
