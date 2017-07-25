package com.niit.controller;

import javax.validation.Valid;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.CustomerDaoImpl;
import com.niit.model.Customer;
import com.niit.model.User;
import com.niit.service.CustomerService;
import com.niit.service.CustomerServiceImpl;

@Controller
public class CustomerController {

	 ApplicationContext context1 =new AnnotationConfigApplicationContext(DBConfiguration.class,CustomerDaoImpl.class,CustomerServiceImpl.class);
	 CustomerService customerService =(CustomerService)context1.getBean("customerServiceImpl");
	 
	 
	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("customer",new Customer());
	
		return "registration";
	}
	
		
	@RequestMapping("/savecustomer")
	public String registerCustomer(@Valid @ModelAttribute(name="customer") Customer customer,BindingResult result,Model model)
	{   
		if(result.hasErrors())
		{
	   
			return "registration";
	 
		}
		
		String username = customer.getUser().getUsername();
        User user =customerService.validateUser(username);	   
		
		
		String email = customer.getEmail();
		Customer customer1 =customerService.validateCustomer(email);
		if(customer1!=null||user!=null)
		{   
			model.addAttribute("duplicateUser","Username already Exist");
			model.addAttribute("duplicateEmail","Email address already exist");
			return "registration";
		}
		
		customerService.registerCustomer(customer);
		return "login";
	}
	
	 
}
