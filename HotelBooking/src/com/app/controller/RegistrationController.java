package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.pojos.Users;
import com.app.service.HotelBookingService;

@Controller
@RequestMapping("/hotelbooking")
public class RegistrationController {
	@Autowired 
	private HotelBookingService service;
	
	@RequestMapping("/registration")
	public String showRegistrationForm(Model map)
	{
		System.out.println("in registration");
		map.addAttribute(new Users());
		return "Registration";
	}
	@RequestMapping(value="/registration",method=RequestMethod.POST )
	public String processRegistrationForm(Model map,Users users,HttpSession hs)
	{
		System.out.println(users);
		System.out.println("in process login");
		int id=service.registerUser(users);
		if(id==0){
			map.addAttribute("mesg", "Sorry Y r Not Register");
			return "Registration";
		}
		
		hs.setAttribute("mesg", "register sucessfully");
		return "redirect:/hotelbooking/login";
	}

}
