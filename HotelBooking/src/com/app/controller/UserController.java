package com.app.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Login;
import com.app.pojos.Payment;
import com.app.pojos.Reservation;
import com.app.pojos.RoomDetails;
import com.app.service.IAdminService;
import com.app.service.IUserService;

@Controller
@RequestMapping("/hotelbooking")
public class UserController {
 
	@Autowired
	private IUserService service;
	

	@Autowired
	private IAdminService Aservice;    //to getUserList
	
	@RequestMapping("/userhome")
    public String showAdminHomePage(HttpSession hs)
	{
//		Login login2=(Login)hs.getAttribute("login");
//		if(login2==null){
//			return "login";
//		}
		System.out.println("adminHome");
		return "User/success";			//Admin's Home Page
	}
	
	@RequestMapping(value="/registerroom")
	public String showAdminHomePage(Reservation reservation,Model map)
	{
		return "User/registerRoom";			
	}
	
	
	@RequestMapping(value="/register/{roomNo}",method = RequestMethod.GET)  
    public String registerRoom(@PathVariable int roomNo,Model map,RoomDetails details,HttpSession hs){ 
		
		System.out.println("post"+Aservice.fetchRoomDetails(roomNo));
		RoomDetails room1=Aservice.fetchRoomDetails(roomNo);
		hs.setAttribute("room", Aservice.fetchRoomDetails(roomNo));
		Login login=(Login)hs.getAttribute("login");
		System.out.println(login.getUserId());
		Reservation r1=(Reservation)service.getReservationInfo(((Login)hs.getAttribute("login")).getUserId());
		if(r1==null){
			map.addAttribute(new Reservation());
	       return "User/registerRoom";  
		}
		else{
			System.out.println(room1);
			System.out.println(r1);
			service.addRoom(r1, room1);
			return "redirect:/hotelbooking/reservationDetails";
		}
   }  
	
	@RequestMapping(value="/register/{userId}",method = RequestMethod.POST)  
    public String processregisterRoom(@PathVariable int userId,RedirectAttributes map,Reservation reservation,HttpSession hs){  
		System.out.println("process-----------------------------------");
		RoomDetails details=(RoomDetails)hs.getAttribute("room");
		System.out.println(hs.getAttribute("room"));
		System.out.println(reservation);
		Login login=(Login)hs.getAttribute("login");
		System.out.println(login.getUserId());
		service.reservedRooms(reservation, login, details);
	    map.addFlashAttribute("mesg","you book room succefully");	
       return "redirect:/hotelbooking/reservationDetails";
   } 	
	
	@RequestMapping(value="/reservationDetails")
	public String reservationDetails(Model map,HttpSession hs)
	{
		map.addAttribute(((Reservation)service.getReservationInfo(((Login)hs.getAttribute("login")).getUserId())));
		return "User/reservationDetails";			
	}
	
}
