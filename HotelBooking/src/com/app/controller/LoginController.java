package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.pojos.Login;
import com.app.service.HotelBookingService;

@Controller
@RequestMapping("/hotelbooking")
public class LoginController {
	@Autowired 
	private HotelBookingService service;
	
	@RequestMapping("/home")
	public String showHomePage()
	{
		System.out.println("in home");
		
		return "home";
	}
	@RequestMapping("/login")
	public String showLoginForm(Model map)
	{
		System.out.println("in login");
		map.addAttribute(new Login());
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST )
	public String processLoginForm(Model map,Login login,HttpSession hs)
	{
		System.out.println("in process login");
	    Login login2=service.validateUser(login.getEmailId(), login.getPassword());
		if(login2==null){
			map.addAttribute("mesg", "please Enter valid EmailId and Password");
			return "login";
		}
		if(login2.getRole().equalsIgnoreCase("ADMIN")){
			map.addAttribute("mesg", "you r login sucessfuly");
			hs.setAttribute("login", login2);
			return "redirect:/hotelbooking/adminhome";
		}
		hs.setAttribute("login", login2);
		return "redirect:/hotelbooking/userhome";
	}

	@RequestMapping("/logout")
	public String showLogout(HttpSession hs)
	{
		System.out.println("logout");
		hs.invalidate();
		return "logout";
	}

}
