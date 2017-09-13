package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Controller
public class UserController {
	@Autowired
	UserDao dao;
	@RequestMapping(value="/")
	public String start()
	{
		return "index";
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
	    return "redirect:/addUser";
	}

}
